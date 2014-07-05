require_relative '../fixtures/support/spec_helper'

describe Employee do
  it_behaves_like Memorable

  before(:each) do
    Employee.reset_all
  end

  let!(:employee){Employee.new}

  describe "Instance methods" do
    it "can be payed" do
      expect(employee.pay).to eq("Wooohooooo!")
    end
  end

end
