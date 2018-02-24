source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.7'
  gem 'pry', '~> 0.11.3'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'shoulda-callback-matchers', '~> 1.1'
  gem 'factory_bot', '~> 4.0'
  gem 'faker', '~> 1.8.7'
  gem 'database_cleaner', '~> 1.6'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~>2.0'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '~> 2.4'
