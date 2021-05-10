source 'https://rubygems.org'
ruby '2.6.6'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap'
gem 'jquery-rails'
group :development do
  gem 'sqlite3'
  gem 'listen'
end
gem 'pg', group: :production
gem 'puma'
gem 'rails'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
gem 'sass-rails'
gem 'tapir-reports', github: 'jnicho02/tapir-reports'
gem 'uglifier'
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
