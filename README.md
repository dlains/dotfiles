# dotfiles

This is my personal Shell, Tmux and Vim configuration files. Also included are some files to copy to `~/bin` and other setup resources.

## Git Setup

The git_template directory holds a default set of hooks for any new Git repository. It needs to be enabled with:

```bash
git config --global init.templatedir '~/dotfiles/git_template'
```

The hooks provided will regenerate the ctags file any time I commit, checkout, merge or rebase the repo.
