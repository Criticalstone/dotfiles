#!/bin/bash
HOMEDIR=/home/$(whoami)
rm $HOMEDIR/.vimrc
rm $HOMEDIR/.lesskey
rm -r $HOMEDIR/.i3/
ln -s $(pwd)/.vimrc $HOMEDIR/.vimrc
ln -s $(pwd)/.lesskey $HOMEDIR/.lesskey
ln -s $(pwd)/i3/ $HOMEDIR/.i3
