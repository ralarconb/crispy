# Nodejs Project Config
- Init the application
```sh
npm init
```
- Add the start script to package.json
# Nodejs Local Setup
- This project shows a Nodejs app with a Jenkins pipeline
- First, clone the repository
- Go into the project directory
- Next, install extensions
- Open a terminal and start the application
- And test the application with curl
```sh
git clone https://github.com/ralarconb/fuzzy.git
cd fuzzy
npm install express nodemon
npm start
curl http://localhost:3000/
```
- Optionally go to the URL http://localhost:3000/
# Create Pipeline
- Start Jenkins
```sh
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins
```
- Open Jenkins at the URL: http://192.168.1.101:8080/
- Create a multibranch pipeline: New Item/fuzzy-pipeline/Multibranch Pipeline/OK
- Add the git URL: Branch Sources/Add source/Git/Project Repository
  - https://github.com/ralarconb/fuzzy.git
- Don't fill the credentials section, this is a public repository
- Add a regular expression to filter the needed branches: Behaviors/Add/Filter by name (with regular expression)
```sh
^dev|master|features|main.*$
```
- Config a trigger to pull from time to time on the repository: Scan Multibranch Pipeline Triggers
  - Check **Periodically if not otherwise run**
- Save the configuration of the new pipeline
- Optionally scan and look at the log file: Dashboard/fuzzy-pipeline
  - Scan Multibranch Pipeline Now
  - Scan Multibranch Pipeline Log
# Create Jenkinsfile
- Create Jenkinsfile and push to main branch
  - Scan Multibranch Pipeline Now
  - Scan Multibranch Pipeline Log
- Dashboard/fuzzy-pipeline/main
# Config Java Build Tools in Jenkins
- Dashboard/Manage Jenkins/Global Tool Configuration
  - Gradle/Add Gradle/Gradle-7.0/Check **Install Automatically**
  - Maven/Add Maven/fill the name/Check **Install Automatically**
  - Save
# Config Nodejs Build Tools in Jenkins
- Npm
- Yarn
- Dashboard/Manage Jenkins/Manage Plugins/Available/Check Nodejs
  - Install without restart
  - Restart after plugin has been installed
- Dashboard/Manage Jenkins/Global Tool Configuration
  - Nodejs/Add Nodejs/NodeJS-16.0.0/Check **Install Automatically**
  - Global npm packages to install
    - yarn 
  - Save
- Config Jenkinsfile
# List Env Variables
- http://192.168.1.101:8080/env-vars.html/
# Dockerize
- Clone the repository
```sh
git clone https://github.com/ralarconb/fuzzy.git
```