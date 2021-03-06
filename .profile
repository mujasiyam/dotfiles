#!/bin/sh
#################################################################
#                       VARIABLES                               #
#################################################################
BASH_DIR=$HOME/.config/shells/bash


#################################################################
#			GENERAL PREFERENCE                      #
#################################################################

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    	# include bashrc if it exists
	if [ -f "$BASH_DIR/bashrc" ]; then
		. "$BASH_DIR/bashrc"
	fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

# set PATH Confugration Directory.
if [ -n "$CONFIG_DIR" ]; then
	# PATH
	if [ -f $PATHES ]; then
		. $PATHES
	fi
fi

