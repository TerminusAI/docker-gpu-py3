FROM nvidia/cuda:8.0-cudnn5-devel

MAINTAINER Luis Mesas <luis.mesas@intelygenz.com>

# Python 3
RUN apt-get update && \
    apt-get install -y python3 python3-dev && \
	apt-get clean && \
	apt-get autoremove && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# pip
RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
	python3 get-pip.py && \
	rm get-pip.py

WORKDIR "/root"
CMD ["/bin/bash"]
