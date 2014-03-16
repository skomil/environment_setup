module ShellCommander
  class Runner
    attr_reader :commands
    def initialize(commands,actions=Command::ALL_ACTIONS)
      @commands = []
      commands.each do |cmd|
        @commands << Command.new(*cmd)
      end
    end

    def run
      @commands.each do |cmd|
        cmd.run
      end
    end

  end
end
