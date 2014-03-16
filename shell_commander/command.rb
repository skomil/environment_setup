module ShellCommander
  class Command
    PRE_INSTALL  = 'PRE_INSTALL'
    INSTALL = 'INSTALL'
    POST_INSTALL = 'POST_INSTALL'
    ALL_ACTIONS = [PRE_INSTALL,INSTALL,POST_INSTALL]
    def initialize(exec_string,action=INSTALL)
      @exec_string = exec_string
      @action = action
    end
    def run
      exec exec_string
    end

  end
end
