$LOAD_PATH.unshift(File.dirname(__FILE__))

controllers_path = File.join(File.expand_path(File.dirname(__FILE__)), 'controllers')

files = Dir.entries(controllers_path).select { |f| ['.', '..'].include?(f) == false }.entry_first('base.rb')

files.each { |f| require File.join(controllers_path, f) }
