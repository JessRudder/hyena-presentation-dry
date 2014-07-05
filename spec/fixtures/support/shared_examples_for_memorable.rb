require_relative './spec_helper'

shared_examples_for Memorable do
  before(:each) do
    described_class.reset_all
  end

  let!(:memorable) {described_class.new}

  describe "Memorable class methods" do
    it "keeps track of the instances that have been created" do
      expect(described_class.all).to include(memorable)
    end

    it "can count how many instances have been created" do
      expect(described_class.count).to eq(1)
    end

    it "can reset the instances that have been created" do
      described_class.reset_all
      expect(described_class.count).to eq(0)
    end
  end

  describe "Memorable instance methods" do
    it "can be initialized" do
      expect(memorable).to be_an_instance_of(described_class)
    end
  end
end