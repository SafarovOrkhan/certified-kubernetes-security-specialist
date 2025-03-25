# Run a container sharing the PID namespace with the host
docker run --rm -it --pid=host ubuntu bash

# Inside the container, check all processes on the host
ps aux

# Run a new container sharing the PID namespace of an existing container
docker run --rm -it --pid=container:<container_name_or_id> ubuntu bash

# Inside the new container, check processes running in the original container
ps aux
