#!/usr/bin/env bash
if [[ "$(uname -s)" == "Darwin" ]]; 
then
    val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
    if [[ $val == "Dark" ]]; 
    then
	if [[ $ITERM_PROFILE == "Light" ]]; 
	then
	    echo -ne "\033]50;SetProfile=Dark\a"
	    export ITERM_PROFILE="Dark"
	fi 
    else
	if [[ $ITERM_PROFILE == "Dark" ]]; 
	then
	    echo -ne "\033]50;SetProfile=Light\a"
	    export ITERM_PROFILE="Light"
	fi 
    fi
fi
