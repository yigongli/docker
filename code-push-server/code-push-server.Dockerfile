FROM node:8.11.4-alpine
MAINTAINER flyceek <flyceek@gmail.com>

# COPY ./config/process.json /process.json
COPY ./build.sh /build.sh

RUN ["sh","/build.sh",""]

EXPOSE 3000
CMD ["code-push-server-start"] 