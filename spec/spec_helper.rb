require 'rspec'
require 'guard/delayed'

ENV["GUARD_ENV"] = 'test'

RSpec.configure do |config|
  config.color_enabled = true
end
