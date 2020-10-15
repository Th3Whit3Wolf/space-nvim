# Space Neovim Theme

A spacemacs inspired dark and light colorscheme for neovim.

## Screenshots

Dark theme

![dark theme](assets/dark.png)

Light theme

![light theme](assets/light.png)

*Font:* Jet Brains Mono
*Statusline:* [Spaceline](https://github.com/glepnir/spaceline.vim)
*RGB Highlightin:* [nvim-colorizer.](https://github.com/norcalli/nvim-colorizer.lua)

### Getting Started

Only termguicolors are supported and that will not change.

#### Vim Plug

```vim
Plug 'Th3Whit3Wolf/space-nvim-theme'

" And then somewhere in your init.vim, to set the colorscheme
colorscheme space-nvim-theme
```

#### Minpac

```vim
call minpac#add('Th3Whit3Wolf/space-nvim-theme')

" And then somewhere in your init.vim, to set the colorscheme
colorscheme space-nvim-theme
```

#### Vim Packages

In the terminal execute this command.

```sh
cd ~/.local/share/nvim/site/pack/opt/
git clone https://github.com/Th3Whit3Wolf/space-nvim-theme
```

In your `init.vim` add the following

```vim
packadd! space-nvim-theme
```

```vim
colorscheme space-nvim-theme
```

### NOTE

- Vim is not supported because the theme is written in lua.
- If you feel like a language should be highlighted differently please open an issue.

### TODO

- [ ] Better LSP Highlighting
- [ ] Better Diagnostic Highlighting
- [ ] Better Tree Sitter Highlighting

## Special Thanks To

- [Kiyan Yazdani](https://github.com/kyazdani42) who's [nvim-palenight.lua](https://github.com/kyazdani42/nvim-palenight.lua) was my template for the lua in this theme.
- [Josh Dick](https://github.com/joshdick) who's excellently commented [onedark.vim](https://github.com/joshdick/onedark.vim) I stole 99% of this themes comments from(I actually looked at the docs for nvim-treesitter).
- [Liu-Cheng Xu](https://github.com/liuchengxu) who's [space-vim-theme](https://github.com/liuchengxu/space-vim-theme) where I got all of my highlighting from