# webgoat-training

This repository provides some utility scripts and property files to set up the OWASP WebGoat and WebWolf tools in a training environment.

## Override defaults

In the nondefault folder, you can find scripts to override the default settings for WebGoat.
In the provided example the port 9001 is changed to 8877 and changes are made in webgoat and webwolf property files.

The java jar files of the WebGoat and WebWolf are not provided here. This repository is just illustrative in how to set up in non-default environments.

Some properties can be overriden more easily by setting an environment variable. You can check the property files to know which environment settings need to be used.
Maybe some improvements can be made so more ports or hostnames can be configurable in this way.