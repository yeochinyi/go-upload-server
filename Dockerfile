# FROM golang:1.8 AS build-env
FROM golang:1.13 AS build-env

# MAINTAINER Mei Akizuru

RUN mkdir -p /go/src/app
COPY . /go/src/app
WORKDIR /go/src/app

RUN go build -v -o /go/bin/app

CMD [ "/go/bin/app" ]


# download the dependencies and build the application
# RUN go-wrapper download
#o  RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go-wrapper install

# FROM alpine:3.5 AS runtime-env

# COPY --from=build-env /go/bin/app /usr/local/bin/app
# COPY --from=build-env /go/bin/app /usr/local/bin/app

# CMD [ "/usr/local/bin/app" ]
