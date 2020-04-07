source 'https://rubygems.org'
ruby '2.6.5'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.3'
group :development do
  gem 'sqlite3'
  gem 'listen'
end
group :production do
  gem 'pg'
end
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
# gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'tapir-reports', github: 'jnicho02/tapir-reports'

gem 'jquery-rails'
gem 'bootstrap', '>= 4.3.1'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
