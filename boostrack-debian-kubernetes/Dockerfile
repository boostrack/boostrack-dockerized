#
# Kubernetes: build
#

FROM boostrack/debian:golang-runtime
MAINTAINER hflambo@boostrack.com

RUN mkdir -p /kubernetes/
RUN mkdir -p $GOPATH/src/github.com/GoogleCloudPlatform
WORKDIR $GOPATH/src/github.com/GoogleCloudPlatform
RUN git clone https://github.com/GoogleCloudPlatform/kubernetes.git
RUN cd kubernetes && hack/build-go.sh
RUN mv kubernetes/output/go/* /kubernetes/
VOLUME /kubernetes
