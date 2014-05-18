cd ~
sudo curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby-2.0.0-p247
rvm gemset create rails4
rvm gemset use rails4
gem install rails

