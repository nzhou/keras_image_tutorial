# keras_image_tutorial

Welcome to the tutorial on transfer learning for deep neural network image recognition models!

In this tutorial, you will learn
* What is the Google Inception model
* Transfer learning
* How to fine tune a transfer learning model

## Installation

We recommend using the Docker container, but you can also install the required
packages using Anaconda.

### Docker

To start the tutorial, please clone this repository and set up the Docker container with the following steps:

1. Install Docker from https://www.docker.com/get-started. For linux, try `sudo apt-get install docker.io`
1. Run the Docker image:
    ```
    docker run -v "$(pwd)/notebook:/notebooks" -p 8888:8888 -p 6006:6006 docker.io/burk/champagne-image-tutorial
    ``` 

    * If you are using Docker for Windows, please first configure sharing as explained
      [here](https://blogs.msdn.microsoft.com/stevelasker/2016/06/14/configuring-docker-for-windows-volumes/). Then start the tutorial container by running

        ```
        docker run -v "(absolute path of the repository)/notebook:/notebooks" -p 8888:8888 -p 6006:6006 docker.io/burk/champagne-image-tutorial`
        ```
1. Copy the url given in the terminal window and open it in a browser

You can also build the Docker container yourself:
1. Build the Docker image: `docker build . --tag tutorial:v1`
1. Start the container: `docker run -v "$(pwd)/notebook:/notebooks" -p 8888:8888 -p 6006:6006 tutorial:v1`

### Anaconda

If the Docker file doesn't work for you for some reason, please try to install the libraries needed using Anaconda:
1. Download and install Anaconda (https://www.anaconda.com/download/)
1. Create a Python 3.6 environment: `conda create -n py36 python=3.6 anaconda`
1. Switch to the new environment: `activate py36` or `source activate py36`
1. Clone or download the tutorial material to your local computer
1. Open a notebook: `jupyter notebook`
    * If the notebook window doesn't open automatically in your browser, please copy the url given and open it in a browser
1. Run the first two cells in the keras_tutorial notebook from this repository to install the libraries needed

## FAQ

* I got the error "docker: Error response from daemon: driver failed programming external connectivity on endpoint relaxed_varahamihira: Bind for 0.0.0.0:8888 failed: port is already allocated."
    * This means the port 8888 is already in use. It often occurs after you kill a notebook server. You can just pick a different port from the first port number in the docker run line, e.g. `docker run -v "$(pwd)/notebook:/notebooks" -p 7777:8888 tutorial:v1`

* Can I use Python 3.7?
    * As of 2018.12.03, Tensorflow hasn't released the official support for Python 3.7 yet, so we are using Python 3.6 for this tutorial at the moment.

* I got a FileNotFoundError when running cell 10!
    * We encourage you to find the pictures you like for testing, so you need to put some pictures there or change the image path called in the function.

* Can I use Linux subsystem in Windows?
	* It's quite tricky to make Docker work for the Linux subsystem in Windows, so we suggest to use a native environment. Or try the Anaconda option instead.
