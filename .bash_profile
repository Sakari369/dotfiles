# sakari/.bashrc
# 
# For my Mac Os X Panther setup
#
# functions
#

function shellstuff
{
        local tty=`tty | sed -e "s/\/dev\///"`
	local DEVKITPRO="/usr/local/devkitpro/devkitARM"
        if [ "$UID" = "0" ]
        then
                export PS1="_ROOT_@\h:$tty:\w\$ "
                export PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"
        else
                export PS1="\u@\h:$tty:\W\$ "
                #export PS1="ind1g1Neous@system:$tty:\W\$ "
		export PATH="$PATH:/usr/local/bin:$HOME/bin:$DEVKITPRO/bin:/usr/local/mysql/bin"
		export NODE_PATH="/opt/local/lib/node_modules/"
		export PYTHONPATH="$HOME/lib/python:$HOME/lib/python/PIL"
        fi

	export PATH=/opt/local/bin:/opt/local/sbin:$PATH

}

# Substitutes lines 'from' to 'to' in filenames passed in as arguments
function subst
{
	local tempfile
	local from="$1"
	shift
	local to="$1"
	shift

	if [ ! -z "$to" -a ! -z "$from" -a ! -z "$1" ]
	then
		while test "$1"
		do
			tempfile=`mktemp /tmp/subst.XXXXXX`	
			sed -e "s/$from/$to/g" < "$1" > "$tempfile"
			echo "s/$from/$to/g in $1"
			mv "$tempfile" "$1"
			shift
		done
	else
		echo "subst: missing arguments"
		echo "usage: subst searchstring replacestring file(s)"
	fi
}

# Simple script to extract tar archives. Decides from the filename which
# filter to use.
function untar
{
        local opts="xvf"
        local filter=""
	local prog="tar"
        case "$1" in
                (*.tar.bz2)
                        filter=bzip2
                        ;;
                (*.tar.gz|*.tgz)
                        filter=gzip
                        ;;
                (*.tar.[zZ])
                        filter=uncompress
                        ;;
                (*.tar)
                        filter=""
                        ;;
		(*.jar)
			prog="jar"
			;;
                (*)
                        echo "untar: invalid argument"
                        filter="foo"
                        opts=""
                        ;;
        esac
        if [ -z "$filter" ]
        then
                $prog -$opts $1
        fi
        if [ ! -z "$opts" -a ! -z "$filter" ]
        then
                $filter -dc $1 | tar -$opts -
        fi
}

function fixmodul8
{
	cp -v "$1" "$1.bak"
	sed '/master_speed_factor/,/FLOAT/d' "$1" > "$1.new"
	mv "$1.new" "$1"
}

# Prints the escape code to change the geometry of a terminal window
# Arguments: height width xpos ypos
function xgeom
{
	printf '\033[\033[8;%d;%dt\033[\033[3;%d;%dt' $@
}

export EDITOR="~/bin/mvim"

export LS_OPTIONS=" -F -G"
export LC_CTYPE="fi_FI"

function tabname {
     printf "\e]1;$1\a"
}

# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
	update_terminal_cwd() {
		# Identify the directory using a "file:" scheme URL,
		# including the host name to disambiguate local vs.
		# remote connections. Percent-escape spaces.
		local SEARCH=' '
		local REPLACE='%20'
		local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
		printf '\e]7;%s\a' "$PWD_URL"
		tabname "${PWD##/*/}"
	}
	PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi

# execute stuff
#
shellstuff

# aliases
#
if [ -f ~/.bash_aliases ]
then
	. ~/.bash_aliases
fi

if [ -f ~/.bash_dicole ]
then
	. ~/.bash_dicole
fi

# Fink stuff
if [ -f /sw/bin/init.sh ]
then
	. /sw/bin/init.sh
fi


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/sakari/Downloads/cocos2d-x-3.2/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH
