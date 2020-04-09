FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /sixkube
WORKDIR /sixkube
COPY Gemfile /sixkube/Gemfile
COPY Gemfile.lock /sixkube/Gemfile.lock
RUN gem install bundler -v 2.0.1
RUN bundle install
COPY . /sixkube

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \ 
    apt-get install yarn && \
    yarn install --check-files

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
