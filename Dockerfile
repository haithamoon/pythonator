FROM python:3

# Let the conatiner know that there is no tty
ENV ERRORS=0
ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Qatar

# Update base image
# Install software requirements
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
     && echo $TZ > /etc/timezone \
     && apt-get -qq update && \
        apt-get -qq install -yy build-essential \
        pkg-config \
        software-properties-common \
	ipython

COPY get_bitcoin_exchange.py /usr/local/bin/
