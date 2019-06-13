# vim-synstax

[![This project is considered finished](https://img.shields.io/badge/status-finished-success.svg)](https://benknoble.github.io/status/finished/)

Vim plugin for interacting with syntax highlighting

It provides an autoloaded functional interface to syntax groups, like

```vim
synstax#UnderCursor()
```

## Installation

I recommend using [Pathogen](https://github.com/tpope/vim-pathogen) for managing
plugins.

Then it's just a quick

```bash
cd ~/.vim/bundle
git clone https://github.com/benknoble/vim-synstax.git
```

## Quickstart

Drop the following in your vimrc, enable syntax highlighting, and use your
mapping!
```vim
" Whatever mapping you want to use
nnoremap <Leader>s :echo synstax#UnderCursor()<CR>
```

## Usage

Check out the docs (`:help synstax`).
