require './shell_commander'
task :default => [:about]
task :about do
  puts "Shell Commander Installation"
end

task :install, :pkg  do |task, args|
  ShellCommander::FileInstaller.new(ShellCommander::Command::ALL_ACTIONS,args[:pkg])
end

task :relink, :pkg  do |task, args|
  ShellCommander::FileInstaller.new([ShellCommander::Command::UNLINK,ShellCommander::Command::LINK],args[:pkg])
end
task :link, :pkg  do |task, args|
  ShellCommander::FileInstaller.new([ShellCommander::Command::LINK],args[:pkg])
end
task :unlink, :pkg  do |task, args|
  ShellCommander::FileInstaller.new([ShellCommander::Command::UNLINK],args[:pkg])
end
task :reindex, :pkg  do |task, args|
  ShellCommander::FileInstaller.new([ShellCommander::Command::REINDEX],args[:pkg])
end
task :dry_run, :pkg  do |task, args|
  ShellCommander::FileInstaller.new(ShellCommander::Command::ALL_ACTIONS,args[:pkg],true)
end
