module ShellCommander
  class Runner
    attr_reader :commands
    def initialize(commands,actions=Command::ALL_ACTIONS,dry_run=false)
      @commands = commands
      @actions = actions
      if dry_run
        commands.each do |cmd|
          cmd.dry_run = true
        end
      end

    end

    def run
      @commands.each do |cmd|
        if @actions.one?{|x|x==cmd.action}
          cmd.run
        end
      end
    end

  end
end
