shared_context :controller_test do

  include Rack::Test::Methods

  def controller_root
    'http://example.org/'
  end

  def session
    app.session
  end

  def cache
    app.cache
  end

  def authorize!
    #set_cookie 'shopa=xnd54w3fklg'
  end

  let(:logfile) { StringIO.new }

  def app
    @app ||= begin
      app_class = Class.new(described_class) do

        set :show_exceptions, false
        set :raise_errors, true

        class << self
          def session
            @session ||= OpenStruct.new
          end

          def cache
            @cache ||= HashCache.new
          end

        end

        def session
          self.class.session
        end

        def cache
          self.class.cache
        end

        def app_logger
          self.class.app_logger
        end
      end

      logfile = logfile()
      app_class.define_singleton_method :app_logger do
        @app_logger ||= Logger.new(logfile)
      end
      app_class

    end

  end
end