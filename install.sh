#!/bin/bash

if [[ ! -e $HOME/.config/fish ]]; then
    mkdir $HOME/.config/fish
fi

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish 

source && fisher install jorgebucaran/fisher

fisher install pure-fish/pure


cp $(pwd)/* $HOME/.config/fish/
