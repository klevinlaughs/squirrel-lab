FROM alpine:latest

RUN groupadd -r normalusergroup && useradd --no-log-init -r -g normaluser normalusergroup

USER normaluser

RUN apk add bash
ADD dummy.txt .
