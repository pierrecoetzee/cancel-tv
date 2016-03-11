$LOAD_PATH.unshift(File.dirname(__FILE__), 'lib')

if ENV['coverage']
  require 'simplecov'
  SimpleCov.command_name 'features:webapp'
end

require 'sinatra'
require 'cancel_tv'

map '/' do
  run CancelTv::Controllers::Home
end