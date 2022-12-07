# packer-flask-app


File hierarchy

├── flask-app.json
├── flask.sh
├── helloworld
│   ├── app
│   │   ├── __init__.py
│   │   ├── __pycache__
│   │   │   ├── __init__.cpython-310.pyc
│   │   │   └── __init__.cpython-38.pyc
│   │   └── templates
│   │       ├── base.html
│   │       └── index.html
│   ├── __pycache__
│   │   └── startup.cpython-310.pyc
│   └── startup.py
└── README.md

File details:

flask-app.json :  Packer build file configured to build flask app image based on a Ubuntu 20.04 image
flask.sh : Contains the scripts to be run during boot up of the built image
helloworld folder: Contains the flask application


## How to run packer

=> All these commands can run as a non privileged user

$ az login #login to Azure account

Fill in the flask-app.json file with necessary credentials and provide necessary version details in Managed image version section and Share image gallery section

$ packer build flask-app.json
