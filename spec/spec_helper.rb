require 'rspec'

require 'simplecov'
SimpleCov.start

ROOT_DIR = "#{__dir__}/.." unless defined?(ROOT_DIR)

Bundler.require :test

ENVIRONMENT = 'development'

$LOAD_PATH.unshift("#{ROOT_DIR}/lib/cancel-tv", __dir__)
$LOAD_PATH.unshift("#{ROOT_DIR}/lib", __dir__)

$LOAD_PATH.unshift(__dir__)

Bundler.require

require 'ext'
require 'controllers'
require 'models'
require 'rack/test'
require 'helpers'
