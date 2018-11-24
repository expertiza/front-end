printf "********** Set the build type Prod/Beta *******************\n\n"
export DEPLOY_ENV="$1"

printf "********** Building Docker Image and pushing it ***********\n\n"
. docker.sh
printf "********** Done ***********\n\n"

printf "********** Deploying on ${DEPLOY_ENV} ************\n\n"
. ansible.sh
printf "********** Done ***********\n\n"
