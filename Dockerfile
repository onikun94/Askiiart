FROM ruby

RUN apt-get update -y && apt-get install -y\
    vim \
    git \
    sudo \
    osspd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /workspace/
    
