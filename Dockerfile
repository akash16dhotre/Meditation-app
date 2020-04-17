# Test web-app
FROM busybox

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

RUN npm install -g http-server

# Copy app to /src
Copy . /src

WORKDIR /src

EXPOSE 8080

ENTRYPOINT ["http-server", "-p", "8080"]
