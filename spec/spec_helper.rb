require 'rubygems'
require 'guard/delayed'
require "rspec"

ENV["GUARD_ENV"] = 'test'

Dir["#{File.expand_path('..', __FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.before(:each) do
    ::Guard::Notifier.stub(:notify).and_return(true)
    @fixture_path = Pathname.new(File.expand_path('../fixtures/', __FILE__))
  end

end
