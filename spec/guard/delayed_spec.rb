require 'spec_helper'

describe Guard::Delayed do
  describe "when passing an environment option" do
    subject { Guard::Delayed.new([], {:environment => 'test'}) }

    it "calls system with 'export RAILS_ENV=test;' call first" do
      subject.should_receive(:system).with("export RAILS_ENV=test; script/delayed_job stop").and_return(true)
      subject.should_receive(:system).with("export RAILS_ENV=test; script/delayed_job start").and_return(true)
      subject.start
    end

    it "calls system with 'export RAILS_ENV=test;' after changes" do
      subject.should_receive(:system).with("export RAILS_ENV=test; script/delayed_job restart").and_return(true)
      subject.run_on_changes([])
    end

    it "should raise an exception when system call fails" do
      subject.should_receive(:system).and_return(nil)
      lambda { subject.run_on_changes([]) }.should raise_error 
    end

    it "should raise an exception when system command fails " do
      subject.should_receive(:system).and_return(false)
      lambda { subject.run_on_changes([]) }.should raise_error 
    end
  end
end
