# ------------------------------
# General Settings
# ------------------------------
bindkey -e               # キーバインドをemacsモードに設定

setopt no_beep           # ビープ音を鳴らさないようにする
setopt auto_cd           # ディレクトリ名の入力のみで移動す
る
setopt auto_pushd        # cd時にディレクトリスタックにpushd
する
setopt correct           # コマンドのスペルを訂正する
setopt magic_equal_subst # =以降も補完する(--prefix=/usrなど
)
setopt prompt_subst      # プロンプト定義内で変数置換やコマ
ンド置換を扱う
setopt notify            # バックグラウンドジョブの状態変化
を即時報告する
setopt equals            # =commandを`which command`と同じ処
理にする

### Complement ###
autoload -U compinit; compinit # 補完機能を有効にする
setopt auto_list               # 補完候補を一覧で表示する(d)
setopt auto_menu               # 補完キー連打で補完候補を順
case "${OSTYPE}" in
  darwin*)
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH
  ;;
esac
# これを設定すると、現在の入力で始まる過去のコマンドだけが表示されるようになります。
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward


# cdコマンド実行後、lsを実行する
function cd() {
  builtin \cd $@ && ls;
}
# color syntax
[[ -f $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $HOME/.zsh/zs
h-syntax-highlighting/zsh-syntax-highlighting.zsh
alias _x='ssh xstudy -Y'
alias _n='ssh ns'
alias _w='ssh garnet'
alias _m='ssh lapis'
alias _f='ssh fs2'
alias _y='ssh 192.168.16.90'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ls='ls -G'
