# Node Ansible Express API

An express based http api to configure and run ansible plays. Based on the node-ansible module

To install from `git`

    git clone https://github.com/deployable/node-ansible-express#current

To install from `npm`

    npm install node-ansible-express

To get the `npm install`ed module into the top directory

    cp -r node_modules/node-ansible-express ./
    rm node_modules/node-ansible-express

## Running the app

    node app.js

### Running the coffescript app for development

The coffee script source can be run directly if you have the source from git

    node appcoffee.js

## App config

The application config file is in `app/config.json`

 - `http.port` The port the server listens on
 - `http.address` The address the server listens on

### Git app config

From `git`, the application only comes with a default config file `app/config.json.default`

This needs to be copied to `app/config.json` as your local running config. Your running config will not be checked back into git. 

    $ cp app/config.json.default app/config.json
    $ vi app/config.json


