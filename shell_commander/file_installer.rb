module ShellCommander
  class FileInstaller
    def initialize(actions=Command::ALL_ACTIONS,package=nil,dry_run=false)
      @install_directory = './installers'
      @files = Dir.glob("#{@install_directory}/*.install")
      install_count = 0
      @files.each do |file_path|
        if package 
          if file_path.gsub(/\/*\.*\Sinstall|ers\/*/,'') == package
            install_file(file_path,actions,dry_run)
            install_count = install_count + 1
          end
        else
          install_file(file_path,actions,dry_run)
          install_count = install_count + 1
        end
      end
      if install_count == 0
        puts 'No installers found'
      end
    end

    def install_file(file_path,actions=Command::ALL_ACTIONS,dry_run=false)
      puts "preparing to execute commands in file: #{file_path.gsub(/#{@install_directory}\//,'')}"
      action = Command::INSTALL
      commands = []
      File.open(file_path,"r") do |file|
        file.each_line do |line|
          if line.match(/^::/) 
            if line.match(/^::install_/)
              if ENV['PLATFORM'] && line.match(/#{ENV['PLATFORM'].downcase}/)
                action = Command::INSTALL
              else
                action = 'NOOP'
              end
            else
              action = line.gsub(/^::/,'').upcase.gsub(/\n/,'')
            end
          else
            unless line.match(/^#/)
              command = Command.new(line.gsub(/\n/,''),action)
              commands << command
            end
          end
        end
      end
      runner = Runner.new(commands,actions,dry_run)
      runner.run
    end
  end
end
