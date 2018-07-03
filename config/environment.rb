# frozen_string_literal: true

$LOAD_PATH << File.expand_path('lib', __dir__)

require 'active_support/all'
require 'bundler'
require 'telegram/bot'
require_relative 'bot'

Bundler.require(:default, Bot.env)
Dotenv.load

Dir[Dir.pwd + '/lib/**/*.rb'].each do |file|
  require file
end
