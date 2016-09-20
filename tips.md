# Tips

- docker コンテナ一括削除
```
docker rm `docker ps -a -q`
```

- イメージ削除
```
docker rmi [imageID]
```

- コンテナ・イメージ一括削除
```
docker ps -a | grep Exit | awk '{print $1}' | sudo xargs docker rm
docker rmi $(sudo docker images -q)
```


- コミット
```
docker commit <コンテナ名/ID> <イメージ名>:<タグ名>

bash-4.1# exit; // or [ctl+p,ctl+q]
~ $ docker commit [コンテナ] [イメージ名]

docker run -it [イメージ名] /bin/bash

```
