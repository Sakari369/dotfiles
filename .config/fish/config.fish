set -x EDITOR vim

set -x PATH $PATH /usr/local/bin $HOME/bin /opt/local/bin /opt/local/sbin
set -x NODE_PATH /opt/local/lib/node_modules
set -x PYTHONPATH "$HOME/lib/python:$HOME/lib/python/PIL"
set -x LC_CTYPE "fi_FI"

set -x gk "$HOME/dvl/geokone"
set -x gm "$HOME/dvl/geometrify"
