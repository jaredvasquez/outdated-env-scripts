# Load machine specific environment
if [ -f ~/.bash_local ]; then
  source ~/.bash_local
fi

# Load aliases
source ~/.bash_aliases

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# CERN SVN
SVNOFF='svn+ssh://svn.cern.ch/reps/atlasoff'
SVNGRP='svn+ssh://svn.cern.ch/reps/atlasgrp'
SVNUSR='svn+ssh://svn.cern.ch/reps/atlasusr'
SVNHGAM='svn+ssh://svn.cern.ch/reps/atlasphys-hsg1'

# Make things bea-u-ti-ful
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

color_none="\[\033[0m\]"
color_blue="\[\033[0;34m\]"
color_lblue="\[\033[1;34m\]"
color_cyan="\[\033[0;36m\]"
color_purple="\[\033[0;35m\]"
color_lpurple="\[\033[1;35m\]"
color_green="\[\033[0;32m\]"
color_lgreen="\[\033[1;32m\]"
color_red="\[\033[0;31m\]"
color_lred="\[\033[1;31m\]"
color_yellow="\[\033[1;33m\]"
color_white="\[\033[1;37m\]"

case $HOSTNAME in
  'hep.hpc.yale.edu'*)
  hostcolor=$color_lgreen
  ;;
  'compute-'*)
  hostcolor=$color_lred
  ;;
  *)
  hostcolor=$color_green
  ;;
esac
PS1="$color_lpurple[ $hostcolor\h$color_white | $color_cyan\D{%D} \t$color_lpurple ] $color_purple\w$color_none\n$color_lpurple\$$color_none "
