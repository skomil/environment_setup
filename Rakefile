require './shell_commander'
task :default => [:about]
task :about do
  puts "Shell Commander Installation"
end

task :install do
  ShellCommander::FileInstaller.new(ShellCommander::Command::ALL_ACTIONS)
end

task :relink do
  ShellCommander::FileInstaller.new([ShellCommander::Command::UNLINK,ShellCommander::Command::LINK])
end
task :link do
  ShellCommander::FileInstaller.new([ShellCommander::Command::LINK])
end
task :unlink do
  ShellCommander::FileInstaller.new([ShellCommander::Command::UNLINK])
end
task :dry_run do
  ShellCommander::FileInstaller.new(ShellCommander::Command::ALL_ACTIONS,true)
end
