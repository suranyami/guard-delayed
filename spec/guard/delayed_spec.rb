require 'spec_helper'

describe Guard::Delayed do
  describe "when passing an environment option" do
    let(:subject) {Guard::Delayed.new({environment: 'test'})}

    it "calls system with 'export RAILS_ENV=test;' call first" do
      expect(subject).to receive(:system).with("export RAILS_ENV=test; script/delayed_job stop").and_return(true)
      expect(subject).to receive(:system).with("export RAILS_ENV=test; script/delayed_job start").and_return(true)
      subject.start
    end

    it "calls system with 'export RAILS_ENV=test;' after changes" do
      expect(subject).to receive(:system).with("export RAILS_ENV=test; script/delayed_job restart").and_return(true)
      subject.run_on_changes([])
    end

    it "should raise an exception when system call fails" do
      expect(subject).to receive(:system).and_return(nil)
      expect(-> {subject.run_on_changes([])}).to raise_error
    end

    it "should raise an exception when system command fails " do
      expect(subject).to receive(:system).and_return(false)
      expect(-> {subject.run_on_changes([]) }).to raise_error
    end
  end

  describe "when passing a root option" do
    subject { Guard::Delayed.new({:root => 'test/dummy'}) }

    it "calls system in correct directory call first" do
      expect(subject).to receive(:system).with("test/dummy/script/delayed_job stop").and_return(true)
      expect(subject).to receive(:system).with("test/dummy/script/delayed_job start").and_return(true)
      subject.start
    end

    it "calls system in correct directory after changes" do
      expect(subject).to receive(:system).with("test/dummy/script/delayed_job restart").and_return(true)
      subject.run_on_changes([])
    end

    it "should raise an exception when system call fails" do
      expect(subject).to receive(:system).and_return(nil)
      expect(-> {subject.run_on_changes([])}).to raise_error
    end

    it "should raise an exception when system command fails " do
      expect(subject).to receive(:system).and_return(false)
      expect(-> {subject.run_on_changes([])}).to raise_error
    end
  end
end
