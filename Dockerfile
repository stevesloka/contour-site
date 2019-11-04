FROM jekyll/jekyll:3.8.5

WORKDIR /site 
ADD Gemfile /site/Gemfile
ADD Gemfile.lock /site/Gemfile.lock

RUN bundle install

# docker run --publish $(JEKYLL_PORT):$(JEKYLL_PORT) -v $$(pwd)/site:/site -it $(JEKYLL_IMAGE) \
# 		bash -c "cd /site && bundle install && bundle exec jekyll serve --host 0.0.0.0 --port $(JEKYLL_PORT) --livereload"