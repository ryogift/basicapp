source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails", "7.0.1"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", "1.10.2", require: false
gem "view_component", "2.48.0"
gem "sidekiq", "6.4.0"
gem "carrierwave", "2.2.2"
gem "fog-aws", "3.12.0"
gem "dotenv-rails", "2.7.6"
gem "net-smtp", "0.3.1", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rubocop", require: false
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
end

group :test do
  gem "capybara", "3.36.0"
  gem "selenium-webdriver"
  gem "webdrivers"
end
