# Base image - for python environments mostly Python
FROM python:3.9-slim

# set the working directory
WORKDIR /code

# install dependencies
COPY ./requirements.txt ./

RUN pip install PyPortfolioOpt  && \
    pip install --no-cache-dir --upgrade -r requirements.txt

# copy the src to the folder
COPY ./src ./src
