require 'spec_helper'

describe Guard::Delayed do
  describe "when passing an environment option" do
    it "calls system with 'export RAILS_ENV=test;' call first" do
      @delayed = Guard::Delayed.new([], {:environment => 'test'})
      @delayed.should_receive(:system).with("export RAILS_ENV=test; script/delayed_job stop").and_return(true)
      @delayed.should_receive(:system).with("export RAILS_ENV=test; script/delayed_job start").and_return(true)
      @delayed.start
    end
  end
end
