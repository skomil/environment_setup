
cd ~
curl -Lo- https://bit.ly/janus-bootstrap | bash
rm .vimrc.after
ln -s environment_setup/vim/vimrc.after ~/.vimrc.after
rm .janus
ln -s environment_setup/vim/janus ~/.janus
