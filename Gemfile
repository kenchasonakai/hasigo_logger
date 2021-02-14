source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'slim-rails'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'mysql2'
gem 'active_model_serializers', '~> 0.10.0'
group :development, :test do
  gem 'pry-byebug'
  gem 'rspec-rails'
end
group :development do
  gem 'web-console'
  gem 'listen', '~> 3.2'
  gem 'html2slim'
  gem 'rails-erd'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
