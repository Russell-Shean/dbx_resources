# Import the base R image built by databricks
FROM databricksruntime/rbase:latest

# This adds a tag to the image's meta data, it specifies the maintainer as me
LABEL maintainer="Russ <russell.shean@doh.wa.gov>"

# This executes some linux commands to update all packages and then install packages
# Sudo is a mode with privliges 
# everything after sudo is a linux dependency

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

