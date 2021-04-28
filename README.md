# Jenkins Setup
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
- New Item/crispy-pipeline/Multibranch Pipeline/OK
- Branch Sources/Add source/Git/Project Repository
  - https://github.com/ralarconb/crispy.git
- Behaviors/Add/Filter by name (with regular expression)
```sh
^dev|master|features|main.*$
```
- Scan Multibranch Pipeline Triggers
  - Check **Periodically if not otherwise run**
    - Interval: 1 day
- Save
- Dashboard/crispy-pipeline
  - Scan Multibranch Pipeline Now
  - Scan Multibranch Pipeline Log
# Setup Java Project
- Clone the repository
```sh
git clone https://github.com/ralarconb/crispy.git
```
- https://youtu.be/mszE-OCI2V4?t=451