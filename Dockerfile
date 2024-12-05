FROM mrxder/jekyll-docker-arm64

COPY . .

RUN bundle install

ENTRYPOINT [ "bundle", "exec", "jekyll", "serve" ]