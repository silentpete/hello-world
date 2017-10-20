# hello-world

Idea given from initial git hub project recommendatoin, turned into an apache container.

## First Project on GitHub
Blah Blah Blah...

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Prerequisites
Should be able to pull this repo, run two scripts,and have an apache container up and running.

1. run the build apache script
    ```
    sudo ./build-apache.sh
    ```
1. run the run apache script
    ```
    sudo ./run-apache.sh
    ```

## Deployment

If you uncomment the volume for your local path to a folder containing a index.html, the container will display your index and working code.

### Adjustments
Can add a volume mount with in the `run-apache.sh` script to get localized index.html to display
```
-v path/to/index.html/:/var/www/html/
```

## Acknowledgments

* Google'ing made this possible
