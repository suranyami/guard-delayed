require 'spec_helper'

describe Guard::Delayed do
  describe "when passing an environment option" do
    it "calls system with an --environment arg" do
      @delayed = Guard::Delayed.new([], {:environment => 'test'})
      @delayed.should_receive(:system).with("script/delayed_job --environment=test", "stop").and_return(true)
      @delayed.should_receive(:system).with("script/delayed_job --environment=test", "start").and_return(true)
      @delayed.start
    end
  end
end
