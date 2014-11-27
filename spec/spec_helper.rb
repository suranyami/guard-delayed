require 'rspec'
require 'guard/delayed'

ENV["GUARD_ENV"] = 'test'

RSpec.configure do |config|
  config.order = :random
  Kernel.srand config.seed
  config.raise_errors_for_deprecations!
end
