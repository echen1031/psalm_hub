source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.1.2'

#bootstrap
gem 'bootstrap-sass', '~> 3.2.0.2'
gem 'simple_form', '~> 3.1.0.rc1'
gem 'sprockets'
gem 'paperclip', "~> 4.2" # for upload file in form

group :assets do
  gem 'sass-rails', '~> 4.0.3'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'faker'
end

group :test do
  gem 'capybara'
  gem 'launchy'
end

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development
gem 'aws-s3', :require => 'aws/s3'
gem 'figaro'
gem 'nokogiri'
gem 'sidekiq'
gem 'draper'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
