# ReactJS front end for the Expertiza server.

## Contribution Guidelines

1. Fork the repository
2. Make changes on ```master``` branch only as it will have the latest stable version of the application
3. Once you have committed changes to the forked repo, create a new pull request from forked master branch to expertiza beta branch. ```expertiza:beta <-- forked:master```
4. Your changes will go through our integration checks and test suite.
5. Once the integration checks pass, your changes will be merged into ```expertiza:beta```
6. The changes will now be exposed to limited population for beta testing.
7. One/Many fixes and features including yours will be bundled together from ```expertiza:beta``` and merged into ```expertiza:master``` as per our deployment cycle.
8. Once the previous step is completed the changes will be reflected to everyone who uses Expertiza.

## Environment setup

Please read the pre-requisites to make sure you have the required software and tools installed

1. Clone the repository ```git clone https://github.com/expertiza/front-end.git```
2. Download Node dependencies ```npm install```
3. Run the server ```npm start```

## Pre-requisites

1. NodeJS 10x *https://nodejs.org/en/download/*
2. NPM 'serve' module *(optional if you want to host a production build of the application)*

## Creating and Testing a Docker image (optional)

Though it is not required for you to create a docker image of the application to contribute to the project, you can run the ```docker.sh``` script available at the root of the repository to create a docker image and push it onto your DockerHub repository.

P.S: You need to have docker installed on your local machine for this to work and also you have to set the following environment variables

 * REGISTRY_PASS
 * REGISTRY_USER
 * DEPLOY_ENV (can be any tag. E.g: stable, beta etc)
 * IMAGE_NAME should be of the format <your_dockerhub_username/image_name>

Conversely, we have created a docker image if you want to just test the existing service. You can pull and run the docker image from ```docker pull expertiza/front-end```

## Setting up your own Travis-CI environment (optional)

If you want to setup your own integration and testing environment you can do so by enabling Travis-CI for your repository and adding the following environment variables in it.

 * ANSIBLE_PLAYBOOK="ansible/playbooks/deploy.yml"
 * ANSIBLE_INVENTORY="ansible/inventory.ini"
 * ANSIBLE_HOST_KEY_CHECKING="False"
 * ANSIBLE_VAULT_PASS="<password_used_to_encrypt_inventory>"
 * IMAGE_NAME="<your_dockerhub_username>/front-end"
 * CI = "False"
 * REGISTRY_PASS (DockerHub user name)
 * REGISTRY_USER (DockerHub password)
