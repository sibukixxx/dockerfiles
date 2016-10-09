#/bin/bash

## 作成したPython入りのCentOSイメージからコンテナ作成
docker run -it -v `pwd`/src:/tmp --name dev-python3 sibukixxx/python3 /bin/bash
