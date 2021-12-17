source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "rails", "6.1.4.1"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", "1.9.3", require: false
gem "view_component", require: "view_component/engine"
gem "sidekiq", "6.2.2"
gem "carrierwave", "2.2.2"
gem "fog-aws", "3.12.0"
gem "dotenv-rails", "2.7.6"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rubocop", require: false
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
  gem "spring"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end
