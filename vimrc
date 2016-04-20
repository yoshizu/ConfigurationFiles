 " 環境設定系
 " " シンタックスハイライト
 syntax on
 
 " " エンコード
 set encoding=utf8
 
 " " ファイルエンコード
 set fileencoding=utf-8

 " バックスペースで各種消せるようにする
 set backspace=indent,eol,start
 
 " OSのクリップボードを使う
 set clipboard+=unnamed
 set clipboard=unnamed
 
 " 不可視文字を表示
 set list
 
 " 行番号を表示
 set number
 
 " 右下に表示される行・列の番号を表示する
 set ruler
 
 " compatibleオプションをオフにする
 set nocompatible
 
 " 移動コマンドを使ったとき、行頭に移動しない
 set nostartofline
 
 " 対応括弧に<と>のペアを追加
 set matchpairs& matchpairs+=<:>
 
 "コマンドを画面最下部に表示する
 set showcmd
 
 " ESCを二回押すことでハイライトを消す
 nmap <silent> <Esc><Esc> :nohlsearch<CR>
 
 "インクリメンタルサーチ
 set incsearch
 
" 対応する括弧を強調
 set showmatch
 
"大文字小文字を区別しない
 set smartcase
