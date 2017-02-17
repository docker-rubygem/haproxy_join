FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3

RUN gem install haproxy_join --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["haproxy_join"]
CMD ["--help"]
