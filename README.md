# metric
Python script for get cpu and memory metric and show them

## How to use
CPU Metrics
```
python3 metric cpu
```
Memory Metrics
```
python3 metric mem
```

## Necessary environment
Python 3
Script use psutil - cross-platform python library for retrieving information on running processes and system utilization
```
pip3 install psutil
```
How to install [pip] (https://github.com/giampaolo/psutil/blob/master/INSTALL.rst)

## Docerfile
Buil and run docker container to get basic CPU and memory metric
Base Docker Image
  ubuntu:latest
Additional packages
   * python3
   * python3-pip
   * python3-virtualenv
   * psutil python library
Copy metric script into docker image

## Build docker image
```
docker build -t metric/osokin .
```

## Run container
```
docker run --name metric -d -i metric/osokin:latest
```

## Get basic CPU metric
```
docker exec metric /metric cpu
```

## Get basic memory metric
```
docker exec metric /metric mem
```
