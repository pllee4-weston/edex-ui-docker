FROM ubuntu:bionic

# Run with: sudo docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix edex

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y

RUN apt install -y libx11-xcb-dev libgtk-3-0 libxss1 libnss3 libasound2 libdrm2 libice6 libsm6 libgbm-dev net-tools mount vim htop git curl

# For Ubuntu20.04
# RUN apt install libgconf-2-4

# Install node
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install -y nodejs gcc g++ make
    

RUN mkdir -p /opt && cd /opt && git clone https://github.com/GitSquared/edex-ui.git && cd edex-ui && \
    npm run install-linux
    # useradd -m edex

# RUN mkdir -p /opt
WORKDIR /opt/edex-ui
# USER edex

# CMD npm start

