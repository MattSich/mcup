# Meteor CentOS 6+ UP
### Simple Meteor Deployment for RHEL/CentOS 6+
Deploy your Meteor app on RHEL flavoured boxes via SSH, and keep your apps alive with forever.js. Your app is served through reverse proxy by __nginx__. Based on [meteor-please](https://github.com/hellstad/meteor-please).

## Installation
````
npm install https://github.com/MattSich/mcup.git -g
````

## Usage
##### 1. Initialise
Simply run in your Meteor project's directory:
````
mcup
````
You'll get a prompt to automatically configure a `mcup.json` for your project.

##### 2. Setup Your Environment
Once you've got a configuration file, you can spin up your server, then use this command inside your project directory to install the production environment (nodejs, mongodb, nginx):
````
mcup setup
````

Now go grab a coffee, because it will probably take some time for all the things to install.

##### 3. Deploy Your App
After the server setup is done, you can run this command to deploy your app:
````
mcup deploy
````

Easy!

## Commands
__mplz init__ Reconfigures your app's `mcup.json` settings file.

__mplz setup__ Sets up your server according to your `mcup.json` settings.

__mplz deploy__ Deploys your app according to your `mcup.json` settings.

__mplz reconfig__ Apply any configuration changes if your `mcup.json` has been modified since last setup.

__mplz start__ Starts your app. (systemd)

__mplz stop__ Stops your app. (systemd)

__mplz restart__ Restarts your app. (systemd)

__mplz delete__ Deletes your app from the deployment directory.
