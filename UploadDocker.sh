set -ex

# VARIABLES
USERNAME=jpsalado92
IMAGE=devops-capstone
TO_VERSION=blue


# COMMANDS
docker push $USERNAME/$IMAGE:$TO_VERSION 
