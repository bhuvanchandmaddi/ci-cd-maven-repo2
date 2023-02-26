echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth jenkins@54.251.159.211:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh jenkins@54.251.159.211:/tmp/publish.sh
ssh -i /opt/prod jenkins@54.251.159.211 "/tmp/publish.sh"

