
cd ~
rm .vimrc.after
rm .janus
curl -Lo- https://bit.ly/janus-bootstrap | bash
ln -s environment_setup/settings/vim/vimrc.after ~/.vimrc.after
ln -s environment_setup/settings/vim/janus ~/.janus
