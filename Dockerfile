#use the golang base image
FROM golang:1.7
MAINTAINER Daniël van Gils

#get all the go testing stuff
RUN go get github.com/onsi/ginkgo/ginkgo
RUN go get github.com/onsi/gomega

#copy the source files
RUN mkdir -p /usr/local/go/src/github.com/cloud66/habitus
ADD . /usr/local/go/src/github.com/cloud66/habitus

#switch to our app directory
WORKDIR /usr/local/go/src/github.com/cloud66/habitus