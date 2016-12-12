# ベースイメージの指定
FROM ubuntu:16.10

MAINTAINER sibukixxx

RUN apt-get update && apt-get install -y wget vim git

RUN mkdir /tmp/w

# ソースを置くディレクトリを変数として格納                                                  
ARG workplace=/tmp/w
ADD src/install_python_anaconda.sh $workplace



#CMD sh /tmp/workplace/install_python_anaconda.sh
