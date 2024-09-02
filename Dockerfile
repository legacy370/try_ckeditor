FROM ruby:3.2.2

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  curl \
  vim

# Ensure we install an up to date version of Node
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

# Yarn
RUN npm install --global yarn

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
