# cti_builder_32

To build an image: `docker build -t <image name> .`

Exanple:
`docker build -t builder .`

The source should be located on the host. This directory must be mounted to the container.
Use the "volume" command to mount the source code location.

`docker run --rm -it --volume <path on host>:/opt/dev/PRO_Archiver <image name> /bin/bash`

Example run command:
`docker run --rm -it --volume /c/Users/mburton.CTI/Documents/dev/PRO_Archiver:/opt/dev/PRO_Archiver matthewburton71/builder_32bit /bin/bash`
