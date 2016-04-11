if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))
" インストールするプラグインをここに記述
NeoBundle 'Shougo/vimfiler'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'ctrlpvim/ctrlp.vim'
nnoremap <silent><C-e> :NERDTreeToggle<CR>

call neobundle#end()
" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

NeoBundleCheck

set fileformats=unix,dos,mac
set fileencodings=utf-8,cp932,ecu-jp
set number          " 行番号表示
set showcmd         " 入力中コマンド表示
set showmatch       " 入力時対応括弧強調
set laststatus=2    " ステータスバーを表示
set autoindent      " オートインデント
set tabstop=2       " タブ幅
set shiftwidth=2    " タブ幅(自動挿入)
set expandtab       " タブをスペース
"set smartindent     " オートインデント
set ignorecase      " 検索文字列文字列が小文字の場合は大文字小文字区別なし
set smartcase       " 検索文字列に大文字が含まれる場合は大文字小文字区別する
set wrapscan        " 検索時に最後に達したら最初に戻る
set noincsearch     " 検索文字列入力時に順次文字列にヒットさせない
set incsearch       " インクリメンタルサーチ
set hlsearch        " 検索ハイライトをEscでクリア
set noswapfile      " swapファイルを作成しない
set title   


"" neocomplcache
"Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" カーソルキー無効化
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
