require_relative './spec_helper'

shared_examples 'using Memorable' do
  let!(:memorable) {described_class.new}

  describe "Class methods" do
    it "keeps track of the instances that have been created" do
      expect(memorable.all).to include(memorable)
    end

    it "can count how many instances have been created" do
      expect(memorable.count).to eq(1)
    end

    it "can reset the instances that have been created" do
      memorable.reset_all
      expect(memorable.count).to eq(0)
    end
  end

  describe "Instance methods" do
    it "can be initialized" do
      expect(memorable).to be_an_instance_of(described_class)
    end
  end
end