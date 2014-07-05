require_relative '../fixtures/support/spec_helper'

describe Hyena do
  it_behaves_like Memorable
  
  before(:each) do
    Hyena.reset_all
  end

  let!(:hyena){Hyena.new}

  describe "Hyena instance methods" do
    it "can be fed foods it doesn't like" do
      expect(hyena.feed("apples")).to eq("grrrrrrrrr")
    end
    it "can be fed foods it loves" do
      expect(hyena.feed("crunchy bones")).to eq("yipyipyip")
    end
  end
end