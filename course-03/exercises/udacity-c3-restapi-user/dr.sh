
echo host is $POSTGRES_HOST
docker run --rm --publish 8081:8081 -v $HOME/.aws:/root/.aws \
--env POSTGRES_HOST=$POSTGRES_HOST --env POSTGRES_USERNAME=$POSTGRES_USERNAME \
--env POSTGRES_PASSWORD=$POSTGRES_PASSWORD --env POSTGRES_DATABASE=$POSTGRES_DATABASE \
--env AWS_REGION=$AWS_REGION --env AWS_PROFILE=$AWS_PROFILE \
--env AWS_MEDIA_BUCKET=$AWS_MEDIA_BUCKET --env JWT_SECRET=$JWT_SECRET \
--name user tsawan/udacity-restapi-user
