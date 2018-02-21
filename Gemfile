source 'https://rubygems.org'
ruby '2.2.6'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1', '>= 5.1.4'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'uglifier', '~> 4.1', '>= 4.1.3'

gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
gem 'coffee-script-source', '~> 1.12', '>= 1.12.2'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'turbolinks', '~> 5.1'
gem 'jbuilder', '~> 2.7'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'autoprefixer-rails', '~> 7.2', '>= 7.2.5'
gem 'execjs', '~> 2.7'
gem 'popper_js', '~> 1.12', '>= 1.12.9'
gem 'metamagic'
gem 'sitemap'

gem 'pg', '~> 0.20'

group :production do
	gem 'pg', '~> 0.20'
end

group :development do
  gem 'web-console', '~> 3.5', '>= 3.5.1'
  gem 'listen', '~> 3.1', '>= 3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'byebug',  '9.0.6', platform: :mri
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
