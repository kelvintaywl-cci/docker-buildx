FROM alpine:3.15

WORKDIR /
ADD hello .
CMD ["/hello"]
