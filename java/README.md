# CTI java builder box

To build an image: `docker build -t <image name> .`

Exanple:
`docker build -t cti_builder_java .`

The source should be located on the host. This directory must be mounted to the container.
Use the "volume" command to mount the source code location.

`docker run --rm -it --volume <path on host>:/opt/dev/PRO_Archiver <image name> /bin/bash`

Example run command:
`docker run --rm -it --volume /c/Users/mburton.CTI/Documents/dev/PRO_Archiver:/opt/dev/PRO_Archiver cti_builder_java /bin/bash`