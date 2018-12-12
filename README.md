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

1. NodeJS 10x
2. NPM 'serve' module *(optional if you want to host a production build of the application)*
