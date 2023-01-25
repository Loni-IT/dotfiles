"バックスペースキーを有効にする
set backspace=indent,eol,start

"左右のスクロール時の視界を確保
set sidescrolloff=16

"左右のスクロールは1文字ずつ行う
set sidescroll=1

"ルーラー、行番号を表示
set ruler
set number

"カーソルラインを表示
"set cursorline

"ファイルタイプに応じて挙動,色を変える
syntax on

"検索結果をハイライト
set hlsearch

"インクリメンタル検索
set incsearch

"検索で大文字小文字を区別
set noignorecase

"変更中のファイルでも、保存しないで他のファイルを表示
set hidden

"OSとクリップボードを共有
set clipboard+=unnamedplus,unnamed

"検索をファイルの先頭へループしない
set nowrapscan

"折り返ししない
set nowrap

"エンコード設定
"set encoding=utf-8
set fileencodings=utf-8,cp932,iso-2022-jp,sjis,euc-jp
"set fileformats=unix,dos,mac

"grepでcwindowを自動で開くようにする
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

"TABなどの特殊文字を可視化する
set list
set listchars=tab:-\ ,trail:^

"全角スペースを強調表示
scriptencoding utf-8
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=darkcyan guibg=darkcyan
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

"ステータスラインを常に表示
set laststatus=2

"ステータスラインにファイル名表示
set statusline=%<%F\ 

"ステータスラインにファイルフォーマット表示
set statusline+=[%{&fileformat}]

"ステータスラインに文字コード表示
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]

"ここからバー右側
set statusline+=%=

"ステータスラインに文字バイト数/カラム番号
"set statusline+=[%{col('.')-1}=ASCII=%B,HEX=%c]

"ステータスラインに現在文字列/全体列表示
set statusline+=[C=%c/%{col('$')-1}]

"ステータスラインに現在行が全体行の何%目か表示
set statusline+=\ [%p%%]

"スワップファイルを作成しない
set noswapfile

"バックアップファイルを作成しない
set nobackup

"undo ファイルを作成しない
set noundofile

"コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu

"インデント
set tabstop=8
set softtabstop=0
set shiftwidth=0
set noexpandtab

"自動的にインデントしない
set noautoindent
set nosmartindent
set nocindent

"改行で自動コメントしない
set formatoptions-=ro

"ノーマルモードのときにF2で前のバッファ、F3で次のバッファに移動
"map <silent>    <F2>    :bp<cr>
"map <silent>    <F3>    :bn<cr>

" 挿入モード終了時に IME 状態を保存しない
"inoremap <silent> <Esc> <Esc>
"inoremap <silent> <C-[> <Esc>
"「日本語入力固定モード」切り替えキー
"inoremap <silent> <C-j> <C-^>

"挿入モードから抜けた時に IME をオフ、再度挿入モードに入った時に IME 状態を元に戻す
let &t_SI .= "\e[<r"
let &t_EI .= "\e[<s\e[<0t"
let &t_te .= "\e[<0t\e[<s"
set timeoutlen=100

"[mintty]
" Vim 起動時に非点滅のブロック型のカーソル
let &t_ti.="\e[2 q"
" 挿入モード時に点滅の縦棒型のカーソル
let &t_SI .= "\e[5 q"
" ノーマルモード時に非点滅のブロック型のカーソル
let &t_EI .= "\e[2 q"
" 置換モード時に非点滅の下線型のカーソル
let &t_SR .= "\e[4 q"
" vim 終了時にカーソルを mintty のデフォルトに設定
let &t_te.="\e[0 q"

"Beep音を消す
set belloff=all

"Beep音を視覚表示に切り替える。表示文字列はなし。
set visualbell t_vb=

"画面再描画時に検索の強調表示を無効化
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"tagsジャンプ時に候補が複数ある時は一覧表示
nnoremap <C-]> g<C-]>

"カラースキーム
"colorscheme koehler  "gvim
colorscheme torte    "TeraTerm

