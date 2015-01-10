source 'https://rubygems.org'

ruby "2.2.0"

gem 'active_model_serializers'
gem 'nokogiri'
gem 'pg'
gem 'pry'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn', require: false
gem 'activesupport-json_encoder', github: 'rails/activesupport-json_encoder'

group :development do
  gem 'spring'
end

group :development, :test do
  gem 'rubocop'
end

group :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
end

group :production, :staging do
  gem 'rails_12factor'
end
