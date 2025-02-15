<< task
   I TRIED THIS CODE WITH SIR WHILE I AM LEARNING ERROR HANDLING/ THIS CODE IS TO DEPLOY THE DJANGO APP
task

#!/bin/bash

code_clone() {
        echo "Cloning the Django app from Github..."
        git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
	echo "Installing Required Dependencies..."
	sudo apt-get install docker.io nginx -y
}

requried_restarts() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "$$$$$$$$$$ DEPLOYMENT STARTED $$$$$$$$$"

if ! code_clone; then
	echo "The problem in cloning the code"
	cd django-notes-app/

fi

if ! install_requirements; then
	echo "Problem in installation"
	exit 1
fi

if ! requried_restarts; then
	echo "Problem in system restarts"
	exit 1
fi

if ! deploy; then 
	echo "Deployment failed, mailing the admin"
	exit 1
fi

echo "$$$$$$$$$$ DEPLOYMENT DONE $$$$$$$$$"

