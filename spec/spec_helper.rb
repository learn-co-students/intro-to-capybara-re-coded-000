require 'capybara/rspec'
require 'capybara/dsl'
require 'rack/test'
RACK_ENV = "test"
ENV["RACK_ENV"] = "test"
RSpec.configure do |config|
  config.include Capybara::DSL
  config.order = 'default'
  config.include Rack::Test::Methods

end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app
