FROM boostrack/debian:wheezy

# Let's install go (from source).
RUN apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy build-essential curl git
RUN curl -s https://storage.googleapis.com/golang/go1.3.src.tar.gz | tar -v -C /usr/local -xz
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1
ENV PATH /usr/local/go/bin:$PATH

# Let's install etcdctl (from source).
ADD ./etcdctl/ /opt/etcdctl
RUN cd /opt/etcdctl && ./build
RUN cp /opt/etcdctl/bin/ /usr/local/bin/

# Let's install confd (from source).
ADD ./confd/ /opt/confd
RUN cd /opt/confd && ./build
RUN cp /opt/confd/bin/ /usr/local/bin/

RUN mkdir -p /etc/confd/conf.d
ADD ./boostrack-nginx.toml/ /etc/confd/conf.d/

RUN mkdir -p /etc/confd/templates
ADD ./boostrack-nginx.tmpl/ /etc/confd/templates/

RUN \
  apt-get install -y nginx-full && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Define mountable directories.
VOLUME ["/data", "/etc/nginx/sites-enabled", "/var/log/nginx"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443

