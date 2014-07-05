require_relative '../fixtures/support/spec_helper'

describe Vehicle do
  it_behaves_like Memorable

  before(:each) do
    Vehicle.reset_all
  end

  let!(:vehicle){Vehicle.new}

  describe "Instance methods" do
    it "can be fueled up" do
      expect(vehicle.fuel).to eq("Vrooooooooom!")
    end
  end
end