# Jenkins Setup
- This example shows how to build a Java application using a Jenkins pipeline
- Pull jenkins
- Run jenkins
- Get the password from the logs file
```sh
docker pull jenkins/jenkins
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins
docker logs d9e39d338955
```
- Go to the URL http://192.168.1.101:8080
- Create user and password: jenkins/s3cret
# Create Pipeline
- Create a multibranch pipeline: New Item/crispy-pipeline/Multibranch Pipeline/OK
- Add the URL of git repository: Branch Sources/Add source/Git/Project Repository
  - https://github.com/ralarconb/crispy.git
- Add a regular expression to filter branches: Behaviors/Add/Filter by name (with regular expression)
```sh
^dev|features|main.*$
```
- Config a trigger to pull changes in the remote repository from time to time: Scan Multibranch Pipeline Triggers
  - Check **Periodically if not otherwise run**
    - Interval: 1 day
- **Save** the configuration
- Dashboard/crispy-pipeline
  - Scan Multibranch Pipeline Now
  - Scan Multibranch Pipeline Log
# Config Java and Maven Build Tool
- Config Maven tool in order to build Java projects: Dashboard/Manage Jenkins/Global Tool Configuration
  - JDK/Add JDK/fill the name/Check **Install Automatically**/Select the version/Set Oracle account info
  - Maven/Add Maven/fill the name/Check **Install Automatically**
  - Save
# Setup Docker Plugins
- Optionally config Docker plugins: Dashboard/Manage Jenkins/Manage Plugins/All Plugins/Look up for
  - CloudBees Docker Build and Publish
  - Docker Pipeline
  - docker-build-step
- Check each one
- Install without restart
- Finally, restart Jenkins
# Build the Java Project
- To build the project go to: Dashboard/select the pipeline/click on the main branch
  - Click on the option to **Build Now**
  - Select the build number/click on the option "Console Output"