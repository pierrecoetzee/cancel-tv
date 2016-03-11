require 'sinatra/activerecord/rake'

namespace :db do
  task :load_config do
    development_database_config = YAML.load_file("#{__dir__}/../config/development/database.yml")['development']
    ActiveRecord::Base.configurations[ENVIRONMENT.to_s] = development_database_config
    ActiveRecord::Base.establish_connection ENVIRONMENT
  end
end