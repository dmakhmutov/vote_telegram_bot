# frozen_string_literal: true

$LOAD_PATH << File.expand_path('lib', __dir__)

require 'bundler'
require 'telegram/bot'

Bundler.require(:default)
Dotenv.load

Dir[Dir.pwd + '/lib/**/*.rb'].each do |file|
  require file
end
