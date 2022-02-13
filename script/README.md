### Description

This Python script can be used to check the status of the node application which is exposed via nginx. It takes the URL endpoint as an argument, I thought of adding that as an argument instead of hardcoding it since the endpoint can be changed time to time. The script will fail if below checks are not passed,

- Checking for 200 Response code
- Checking for "Hello, world!" text field
- Response time should be below 10 seconds

#### Manual Execution

Python 3.x version should be intalled in order to run this script.

##### 1. Install Python 3.x

```sudo yum install gcc openssl-devel bzip2-devel libffi-devel zlib-devel xz-devel
wget https://www.python.org/ftp/python/3.7.11/Python-3.7.11.tgz
tar xzf Python-3.7.11.tgz
cd Python-3.7.11
./configure --enable-optimizations
make altinstall
```
##### 2. Execute the script

`python3 status_check.py <url endpoint>`

Ex: `python3 status_check.py http://ShareTheMeal-LB-1541489978.us-east-1.elb.amazonaws.com`

- - - -

#### Periodically Execute the script via Crontab

This script can be configured to be executed periodically using Crontab of Unix servers. Add below line to execute this script every 5minutes and save it.

`*/5 * * * * python3 status_check.py <url endpoint>`
