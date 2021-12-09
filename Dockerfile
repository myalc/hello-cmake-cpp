FROM gcc:latest as builder
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

RUN apt-get update && apt-get -y --no-install-recommends install \
    build-essential \
    clang \
    cmake \
    gdb
RUN cmake .; make; make install

FROM ubuntu:22.04
WORKDIR /usr/src/myapp
COPY --from=builder /usr/src/myapp .
CMD ["./myapp"]

LABEL Name=hellocmake Version=0.0.1
