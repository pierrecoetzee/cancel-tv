require_relative '../../../lib/cancel-tv/controllers/home'

module CancelTv
  module Controllers
    describe Home do

      include_context :controller_test

      describe 'get /' do
        it 'returns a 200 status code' do
          get '/home', {}
          expect(last_response.status).to be 200
        end
      end

    end
  end
end