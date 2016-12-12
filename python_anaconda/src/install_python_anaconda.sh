
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

array=(`pyenv install -l | grep ana`)
i=0
for e in ${array[@]}; do
    echo "${e}"
    let i++
done
echo -n "どのAnacondaをインストールしますか？"

containsElement () {
  local e
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

# 入力があるまで無限ループ
while true ;  do
        # キーワード入力を促す部分 
        # 標準入力からキーワードを読み込むコマンド (read) => 変数KEYWORDに格納される
        read KEYWORD

        # 変数KEYWORDが空文字なら無限ループする
        if [ "${KEYWORD}" == "" ];then
                continue
        fi

        containsElement "${KEYWORD}" "${array[@]}"
        if [ $? == 0 ];then
                echo pyenv install ${KEYWORD}
                echo pyenv rehash
                echo pyenv global ${KEYWORD}
                echo 'export PATH="$PYENV_ROOT/versions/${KEYWORD}/bin/:$PATH"' >> ~/.bashrc
                break
        else
                echo "version not found"
                break
        fi
done
