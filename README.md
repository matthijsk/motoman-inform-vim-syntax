jbi.vim
=======

Vim syntax file for Motoman INFORM III.
----------------------------------------------------------------------

### Installation

Copy jbi.vim to `~/.vim/syntax/` or `$VIMRUNTIME/syntax/`.
Use the command

```vim
    :set ft=jbi
```

to enable syntax highlighting for jbi files.

### Automatic filetype detection

You might want to add the following lines to `~/.vim/filetype.vim` to enable
automatic detection of the jbi filetype:
    
```vim
    " Detect INFORM III filetype.
    augroup filetypedetect
      au BufRead,BufNewFile *.jbi		setfiletype jbi
      au BufRead,BufNewFile *.JBI		setfiletype jbi
    augroup END
```

### Navigating jobs

It's nice to be able to quickly navigate through the source code, especially
if you make heavy use of `CALL JOB:<JOBNAME>` statements. When editing a C or
C++ file with Vim the current file under the cursor can be opened using `gf`
or `CTRL-W_CTRL-F`. To enable this for .jbi files add the following to your
.vimrc:

```vim
    " Add suffixes to enable 'gf' commands on CALL JOB:<JOB> lines.
    set suffixesadd+=.JBI,.jbi

    " Set path to jbi files. Replace this with the path to your actual working
    " directory.
    set path+=/path/to/jbi/files
```

### Screenshots

#### default

![default colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-default.png "default")

#### molokai

![molokai colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-molokai.png "molokai")

#### rdark

![rdark colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-rdark.png "rdark")

#### xoria256

![xoria256 colorscheme](https://github.com/matthijsk/motoman-inform-vim-syntax/raw/master/img/sample-xoria256.png "xoria256")
