# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'dotenv'
gem 'telegram-bot-ruby'

group :development, :test do
  gem 'pry'
  gem 'rubocop', require: false
end

group :test do
  gem 'rspec'
end
