set -ex

# VARIABLES
USERNAME=jpsalado92
IMAGE=devops-capstone
TO_VERSION=blue


# COMMANDS
# cat secrets/token.txt | docker login --username=$USERNAME --password-stdin
docker push $USERNAME/$IMAGE:$TO_VERSION 
