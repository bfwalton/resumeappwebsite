FROM mrxder/jekyll-docker-arm64

COPY Gemfile .

RUN bundle install

COPY . .

ENTRYPOINT [ "bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0" ]