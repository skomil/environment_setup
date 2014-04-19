module ShellCommander
  class Command
    #unlink any files/directories
    UNLINK  = 'UNLINK'
    #run installation commands
    INSTALL = 'INSTALL'
    #link files/directories with environment setup
    LINK = 'LINK'
    ALL_ACTIONS = [UNLINK,INSTALL,LINK]
    attr_reader :action,:exec_string
    attr_accessor :dry_run,:run_dir
    def initialize(exec_string,action=INSTALL)
      @exec_string = exec_string
      @dry_run = false
      @action = action
      @run_dir = ENV['HOME']
    end
    def run
      Dir.chdir(@run_dir) do
        if @dry_run
          puts "simulate run:#{@action}--#{@exec_string}"
        else
          puts "#{@action}--#{@exec_string}"
          system @exec_string
        end
      end
    end

  end
end
