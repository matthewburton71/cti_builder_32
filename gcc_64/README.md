# CTI 64 bit Linux builder box

To build an image: `docker build -t <image name> .`

Exanple:
`docker build -t cti_builder_64 .`

The source should be located on the host. This directory must be mounted to the container.
Use the "volume" option to mount the source code location.

`docker run --rm -it --volume <path on host>:/opt/dev/PRO_Archiver <image name> /bin/bash`

Use the "user" option to run as a spacific user. `$(id -u):$(id -g)` will use the current user id.

`docker run --rm -it --user $(id -u):$(id -g) --volume <path on host>:/opt/dev/PRO_Archiver <image name> /bin/bash`

Example run command:

`docker run --rm -it  --user $(id -u):$(id -g) --volume /c/Users/mburton.CTI/Documents/dev/PRO_Archiver:/opt/dev/PRO_Archiver cti_builder_64 /bin/bash`
