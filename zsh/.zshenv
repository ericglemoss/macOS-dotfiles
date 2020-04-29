# PATH
PATH=/usr/local/opt/coreutils/libexec/gnubin
PATH=$PATH:/usr/local/opt/findutils/libexec/gnubin
PATH=$PATH:/usr/local/opt/python@3.8/bin
PATH=$PATH:/Library/TeX/texbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/sbin
PATH=$PATH:/bin
export PATH

# Preferred editor
export VISUAL=nvim
export EDITOR=$VISUAL

# Locale settings
export LC_LL=en_US.UTF-8
export LANG=en_US.UTF-8

# Custom history/cache files locations
export LESSHISTFILE=$HOME/.cache/less/lesshst
export MPLCONFIGDIR=$HOME/.cache/matplotlib
export PYTHONSTARTUP=$HOME/.local/share/python/python-startup.py

# Export LS_COLORS variable used by ls, lf and others for file coloring
export LS_COLORS=$(printf %s            \
                     'no=90:'           \
                     'di=01;34:'        \
                     'ex=01;32:'        \
                     'ln=35:'           \
                     'mh=31:'           \
                     '*.mp3=33:'        \
                     '*.md=04;93:'      \
                     '*.ttf=95:'        \
                     '*.otf=95:'        \
                     '*.png=04;92:'     \
                     '*.jpg=04;92'      \
                  )