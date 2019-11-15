## motoman-inform-vim-plugin

## [Vim][1] syntax and filetype plugin for [Motoman][2] INFORM III.

### Installation

#### Installation with vim-plug:

Put this in your .vimrc:

    call plug#begin('~/.vim/plugged')
      Plug 'matthijsk/motoman-inform-vim-syntax'
    call plug#end()

For the first installation run:

    :PlugInstall

Update every once in a while with:

    :PlugUpdate

#### Manual installation

Extract and copy the folders 
`/doc`, `/ftdetect`, `/ftplugin`, `/indent` and `/syntax` 
into your 
`~/.vim/` or `%USERPROFILE%\vimfiles\` 
directory. 
Overwrite jbi.\* files from older installation.

Put the following in your .vimrc:

    syntax on
    filetype plugin on

You may have to run

    :helptags ~/.vim/doc/

or

    :helptags ~/vimfiles/doc/

to use the help within Vim after installation.

    :help krl


### Navigating jobs

It's nice to be able to quickly navigate through the source code, especially
if you make heavy use of `CALL JOB:<JOBNAME>` statements. The current file
under the cursor can be opened using `gf` or `CTRL-W_CTRL-F`. This also work
on directory and will open the netrw plugin shipped with Vim. After a few `gf`
you can go back with `Ctrl-O` (**O**lder position) and go back in with `Ctrl-I`
(go back **I**n).

### Screenshots

#### default

![default colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-default.png "default")

#### molokai

![molokai colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-molokai.png "molokai")

#### rdark

![rdark colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-rdark.png "rdark")

#### xoria256

![xoria256 colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-xoria256.png "xoria256")

[1]: https://www.vim.org/
[2]: https://www.motoman.com/products/robots/industrial
