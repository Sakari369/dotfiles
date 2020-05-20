set -x EDITOR vim

set -x PATH /opt/local/bin /usr/local/bin $HOME/dvl/ext/depot_tools/ $HOME/bin /opt/local/sbin /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin $HOME/.cargo/bin $PATH
set -x NODE_PATH /opt/local/lib/node_modules
set -x LC_CTYPE "fi_FI.UTF-8"
set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
set -x LIBRARY_PATH "/opt/local/lib"

set -x omg "$HOME/dvl/omg"
set -x cfg "$HOME/Library/Application Support/omnigeometry"
set -x gm "$HOME/dvl/geometrify"
set -x psi "$HOME/dvl/PSIEngine"
set -x nv "$HOME/dvl/omg/neurovizr"
