### MYHOUSE ###

### define base image
## the SDK version to bind to has to be passed by the builder so to select the right base image
ARG SDK_VERSION
ARG ARCHITECTURE
## Use the small python alpine image if you don't have OS dependencies
FROM myhouseproject/myhouse-sdk-alpine:${ARCHITECTURE}-${SDK_VERSION}

### copy files into the image
COPY . $WORKDIR
