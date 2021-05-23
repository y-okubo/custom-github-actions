FROM ruby:2.6.0

RUN gem install octokit

ADD entrypoint.sh /entrypoint.sh
RUN chmod 711 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
