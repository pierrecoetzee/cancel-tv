require 'sinatra'

module CancelTv
  module Controllers
    class Base < Sinatra::Base
      set :views, 'views'
      set :templates_directory, 'views'
    end
  end
end
