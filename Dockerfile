# Starting with the base image from theteamultroid/ultroid:main
FROM theteamultroid/ultroid:main

# Install curl package to be able to download and execute the script
RUN apt-get update && apt-get upgrade -y && apt-get install -y curl

# Running the command to download and execute the script from the given URL
RUN bash -c "$(curl -fsSL https://gist.githubusercontent.com/rooted-cyber/143d3602a7b7dc476a9e6a9c4bf59a02/raw/deploy)"

# Specify the command to be executed when the container starts
CMD ["executable", "param1", "param2"]

# Specify the port on which the container listens for connections
EXPOSE 8080

# Set the working directory for subsequent instructions
WORKDIR /maruf

# Specify the executable to be run when the container starts
ENTRYPOINT ["executable", "param1", "param2"]
