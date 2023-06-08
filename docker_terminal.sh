# @author Julian Whitman, Bassam Bikdash
# Modified by Bassam Bikdash
# This script:
# 1) Runs a modified Nvidia-CUDA image. It comes preinstalled with most python data science/AI
#    libraries and now opencv
# 2) Creates a docker container of that image with an interactive bash shell
# 3) Automatically removes the container when it exits
# 4) Mounts the hard drive volume containing the specific directories where my training code is to the container
#    (i.e. my files on the host machine are now accessible in the docker container)
# 5) To exit the container (i.e. to access the mambda bash shell again), simply press ctrl-P then ctrl-Q.
#    This exits the container while still allowing it to run in the background. To reenter the container,
#    find the container id using "docker ps -a" and then reattach to the container:
#    "docker attach <container-id>". This will put you back in the shell of the running container.
sudo docker run --interactive --gpus all -ti --name zhesheng --shm-size=32000m --rm -v ~/zhesheng:/zhesheng zhesheng /bin/bash
