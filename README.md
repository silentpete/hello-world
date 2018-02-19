# hello-world

Idea given from initial git hub project recommendation, turned into an apache container.

## First Project on GitHub
Blah Blah Blah...

## Getting Started

Should be able to pull this repo, run two scripts,and have an apache container up and running.

## Prerequisites
Docker should be installed.

## Deployment

1. run the build apache script
    ```
    sudo ./build-apache.sh
    ```
1. run the run apache script
    ```
    sudo ./run-apache.sh
    ```

### Adjustments
Can add a volume mount with in the `run-apache.sh` script to get localized index.html to display
```
-v path/to/<index.html dir>:/var/www/html/
```

## Acknowledgments

* Google'ing made this possible
