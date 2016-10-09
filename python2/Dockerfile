# ベースイメージの指定
FROM python:2.7.12-alpine

ENV PYTHON_VERSION 2.7.12
ENV PYTHON_PIP_VERSION 8.1.2

# ソースを置くディレクトリを変数として格納                                                  
ARG project_dir=/web/hello/

# 必要なファイルをローカルからコンテナにコピー
ADD requirements.txt $project_dir
ADD hello.py $project_dir

# requirements.txtに記載されたパッケージをインストール                         
WORKDIR $project_dir
RUN pip install -r requirements.txt

# （コンテナ内で作業する場合）必要なパッケージをインストール
RUN apk update                  
RUN apk add zsh vim tmux git tig
