FROM ruby:3.3.3
RUN apt-get update -qq && apt-get install -yq build-essential libpq-dev nodejs pkg-config
# for a JS runtime
RUN apt-get install -yq nodejs && apt-get install -yq shared-mime-info

# Install cmake to support pronto on local
RUN apt-get update && apt-get install -y cmake

ENV DIR /var/www

RUN mkdir $DIR
WORKDIR $DIR
ADD . $DIR

RUN bundle install
