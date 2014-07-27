# This file creates a minimal container for running Kubernetes binaries

FROM  boostrack-kubernetes
MAINTAINER  Hugo Flambo <hflambo@boostrack.com>

ENV ETCD_SERVERS http://127.0.0.1:4001

ADD . /kubernetes

CMD ["/kubernetes/run.sh"]
