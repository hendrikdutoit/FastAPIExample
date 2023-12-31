# Use an official Python runtime based on Debian 10 "bullseye" as a parent image
FROM python:3.10.12-bullseye as base

# Set the working directory to /app
WORKDIR /app

# By copying over requirements first, we make sure that Docker will cache
# our installed requirements rather than reinstall them on every build
COPY requirements/requirements.txt requirements_test.txt ./

# Install any needed packages specified in requirements.txt
RUN apt update && \
    apt upgrade -y && \
    apt-get clean && \
    apt-get install -y git \
    rm -rf /var/lib/apt/lists/* && \
#    pip install --upgrade pip setuptools wheel && \
#    pip install git+https://github.com/RealTimeEvents/rte-db.git && \
#    pip install --no-cache-dir --force-reinstall -r requirements\requirements.txt -r requirements\requirements_dev.txt


# Copy the current directory contents into the container at /app
COPY . /app
