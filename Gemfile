source 'https://rubygems.org'
ruby '2.6.5'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '>= 4.3.1'
gem 'jquery-rails'
group :development do
  gem 'sqlite3'
  gem 'listen'
end
gem 'pg', group: :production
gem 'puma', '~> 3.12'
gem 'rails', '~> 5.2.3'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
gem 'sass-rails', '~> 5.0'
gem 'tapir-reports', github: 'jnicho02/tapir-reports'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
