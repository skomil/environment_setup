module ShellCommander
  class FileInstaller
    def initialize(actions=Command::ALL_ACTIONS,dry_run=false)
      @install_directory = './installers'
      @files = Dir.glob("#{@install_directory}/*.install")
      @files.each do |file_path|
        install_file(file_path,actions,dry_run)
      end
    end

    def install_file(file_path,actions=Command::ALL_ACTIONS,dry_run=false)
      puts "preparing to execute commands in file: #{file_path.gsub(/#{@install_directory}\//,'')}"
      action = Command::INSTALL
      commands = []
      File.open(file_path,"r") do |file|
        file.each_line do |line|
          if line.match(/^::/)
            action = line.gsub(/^::/,'').upcase.gsub(/\n/,'')
          else
            command = Command.new(line.gsub(/\n/,''),action)
            commands << command
          end
        end
      end
      runner = Runner.new(commands,actions,dry_run)
      runner.run
    end
  end
end
