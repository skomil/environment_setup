
cd ~
curl -Lo- https://bit.ly/janus-bootstrap | bash
rm .vimrc.after
ln -s environment_setup/vimrc.after ~/.vimrc.after
