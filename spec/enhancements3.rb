require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "should know it has lumber" do
    expect(@barracks.lumber).to eql(500)
  end
end


describe SiegeEngine do

  before :each do
    @siegeengine = SiegeEngine.new
    @barracks = Barracks.new
  end

  it "should have double attack power on barracks" do
    @siegeengine.attack!(@barracks)
    expect(@barracks.health_points).to eq(400)
  end

  it "should attack siegeengine" do
    @siegeengine.attack!(@siegeengine)
    expect(@siegeengine.health_points).to eq(350)
  end

end


