# Bad practice: Multiple RUN instructions create separate layers
FROM alpine:3.19

# Updates the package index
RUN apk update

# Installs the curl utility
RUN apk add curl

# Removes unnecessary files from the package manager's cache to reduce size of image
RUN rm -rf /var/cache/apk/*
