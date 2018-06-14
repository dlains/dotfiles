# dotfiles

This is my personal Shell, Tmux and Vim configuration files. Also included are some script files that are added to the path and other setup resources.

## Vim Plugins

I'm using `minpac` as my Vim Plugin manager. In order to get started on a new machine you will need to clone the project into the right directory. For Neovim it is `~/.config/nvim/pack`. Follow thise steps:

```bash
mkdir -p ~/.config/nvim/pack/minpac/opt
cd ~/.config/nvim/minpac/opt
git clone https://github.com/k-takata/minpac.git 
```

Once that is done start Neovim and tell minpac to update itself. This will install the plugins configured in my dotfiles.

```vim
:call minpac#update()
```

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

## Scripts

Make sure the scripts in `dotfiles/bin` are executable:

```bash
chmod +x [script-name]
```

## Resources

Fonts and color schemes that I like to use. Anonymous Pro is my goto font for coding. The Pepermint color scheme works with the default maxOS Terminal. I've switched to iTerm2 now, but just in case I'll keep that color scheme around.

## TODO

* Write a script to install things.

