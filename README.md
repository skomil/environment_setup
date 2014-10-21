## Personal Environment Setup
To install script paths and commands run

    install.sh

### Installation Process
* Add additional shell settings
* Bootstrap RVM with Ruby 2.0  and latest Ruby on Rails
* Use Shell Commander to install and properly link janus and vim
  personalization

### Shell Commander

Shell commander install files use a basic DSL for grouping installation tasks. DSL commands start with "::" then any line after the command will execute

* ::unlink - Pre-Operation, used for any commands that need to run to cleanup previous installs
* ::install - execute command regardless of operating system
* ::link - Post Operation, used for commands that run after installs complete
* ::install_darwin - Operating system specific installation operations, environment currently supports ubuntu and mac
* # - comment line
    

    
