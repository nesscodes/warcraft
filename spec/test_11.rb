require_relative 'spec_helper'

describe Barracks do


  before :each do
    @barracks = Barracks.new
  end

  it "knows that it has health_points" do
    expect(@barracks.health_points).to eql(500)
  end

end


describe Footman do

  before :each do
    @footman = Footman.new
    @barracks = Barracks.new
  end

  describe "#attack!" do

    it "should reduce attack_power by half" do
      @footman.attack!(@barracks)
      expect(@barracks.health_points).to eq(495)

    end

  end
end







