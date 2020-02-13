
echo host is $POSTGRES_HOST
docker run --rm --publish 8081:8081 -v $HOME/.aws:/root/.aws \
--name deployment tsawan/udacity-deployment
