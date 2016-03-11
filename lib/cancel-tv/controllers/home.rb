require_relative 'base'

module CancelTv
  module Controllers
    class Home < Base
      get '/home' do
        haml :'home/index', locals: {}
      end
    end
  end
end
