# cdgsls
# Automatic git status when changing directory
# ls if not in a git repository

# Author: Kevin Bongart
# contact@kevinbongart.net
# http://kevinbongart.net
# https://github.com/KevinBongart

_gs_or_ls() {
  git rev-parse 2>/dev/null && git status || ls -lah
}

# Register the function so it is called
# whenever the working directory changes.
add-zsh-hook chpwd _gs_or_ls
