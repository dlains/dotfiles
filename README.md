# dotfiles

This is my personal Shell, Tmux and Vim configuration files. Also included are some files to copy to `~/bin` and other setup resources.

## Git Setup

The git_template directory holds a default set of hooks for any new Git repository. It needs to be enabled with:

```bash
git config --global init.templatedir '~/dotfiles/git_template'
```

The hooks provided will regenerate the ctags file any time I commit, checkout, merge or rebase the repo. Use `git init` in an existing repo to copy in the hooks.

You can run the ctag generation script any time with `git ctags` if you add the following alias:

```bash
git config --global alias.ctags '!.git/hooks/ctags'
```

Thanks to [Tim Pope](https://tpo.pe/) for the [scripts](https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html).

## TODO

* Add Neovim init.
* Add Bash init.
* Add shell scripts.
* Write a script to install things.

