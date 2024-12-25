FROM ubuntu:latest
COPY /engine /data/game
WORKDIR /data/game
RUN apt-get update && apt-get install -y make git sudo pkg-config cmake-data libglib2.0-dev libelf-dev libisofs-dev gcc rsync
RUN make dependency
CMD make cdi