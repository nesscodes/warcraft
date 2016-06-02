require_relative 'spec_helper'

describe Unit do

  before :each do
      @unit = Unit.new(0, 0)
  end

  describe "#dead?" do
    it "should return true if health_points is 0" do
    
      expect(@unit.dead?).to eq true 
    end

    it "should return false if health_points is > 0" do
      @unit = Unit.new(1, 5)
      expect(@unit.dead?).to eq false

    end

    it "should return true if health_points is below 0" do
      @unit = Unit.new(-1, 5)
      expect(@unit.dead?).to eq true
    end

    it "should not attack if unit is dead" do
      attack = @unit.attack!(Footman.new)
      expect(attack).to be_nil
    end
  end
end
