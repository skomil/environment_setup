cd ~
curl -Lo- https://bit.ly/janus-bootstrap | bash
rm .vimrc.after
ln -s .vimrc.after ~/environment_setup/vimrc.after
