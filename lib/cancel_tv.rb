$LOAD_PATH.unshift(File.dirname(__FILE__), 'cancel-tv')

require 'ext'
require 'cancel-tv/controllers'
require 'cancel-tv/models'
require 'sinatra/base'
require 'yaml'
require 'active_support'
require 'active_support/core_ext'
