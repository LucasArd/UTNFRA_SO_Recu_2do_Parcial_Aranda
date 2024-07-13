  202  docker build -t lucasard/web2-aranda .
  203  docker push lucasard/web2-aranda .
  204  docker push lucasard/web2-aranda:latest .
  205  image ls
  206  docker image ls
  207  docker image rm lucasard/web2-aranda
  208  docker image ls
  209  docker image rm lucasard/web2-aranda
  210  docker image rm lucasard/web2-aranda:none
  211  docker image rm lucasard/web2-aranda:
  212  docker build -t lucasard/webs2-aranda .
  213  docker push lucasard/webs2-aranda:latest
  214  docker run -d -p 8081:80 lucasard/webs2-aranda:latest
  215  curl localhost:8081
  216  cd ..
  217  cd docker
  218  > docker-compose.yml
  219  ls
  220  vim web/file/info.txt
  221  vim docker-compose.yml 
  222  docker compose up -d
  223  vim docker-compose.yml 
  224  docker compose up -d
  225  vim docker-compose.yml 
  226  docker compose up -d
  227  vim docker-compose.yml 
  228  docker compose up -d
  229  curl localhost:8080
  230  curl localhost:8081
  231  docker compose up -d
  232  curl localhost:8080
  233  docker exec -it docker-web-1 cat /info.txt
  234  vim docker-compose.yml 
  235  docker compose up -d
  236  curl localhost:8080
