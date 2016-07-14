require 'pry'
require 'yaml'
require 'watir-webdriver'

require_relative "pages/generic.rb"
Dir["#{Dir.pwd}/features/support/pages/*.rb"].each { |f| require f }

LOGIN_DATA = YAML.load_file('features/test_data/login_data.yml')
POST_DATA = YAML.load_file('features/test_data/post_data.yml')
