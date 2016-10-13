# Meteor CentOS 6+ UP
### Simple Meteor Deployment for RHEL/CentOS 6+
Deploy your Meteor app on RHEL flavoured boxes via SSH, and keep your apps alive with forever.js. Your app is served through reverse proxy by __nginx__. Based on [meteor-please](https://github.com/hellstad/meteor-please).

## Prerequisites
On Mac:
```
brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb
```

## Installation
````
npm install https://github.com/MattSich/mcup.git -g
````

## Usage
##### 1. Initialize
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
