FROM debian:latest
LABEL MAINTAINER="https://github.com/Mr-HacKerr/mrphisher"

WORKDIR /mrphisher/
ADD . /mrphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./mrphisher.sh"]
