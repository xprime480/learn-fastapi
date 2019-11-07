# Learn fastapi

In which Mike learns the basics of fastapi.

## Build information

This solution is built in a Docker container using the base image python:3.8.0-buster and installing addition python packages fastapi and uvicorn.
The Dockerfile included in this project will recreate the environment.
To execute the solution, run the command:

`docker container run -it -v <path_to_solution>:/data p3000:3000 -rm <image>`

This will run a bash shell from which you can launch the solution with the
following:

`./launch.sh`

You can then execute curl commands or use another client to send requests.
