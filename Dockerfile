FROM alpine:latest
COPY entrypoint /root/entrypoint

WORKDIR /root

RUN apk add bash clang clang-dev gcc lld make valgrind musl-dev
RUN mkdir repo

CMD bash entrypoint