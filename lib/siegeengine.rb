class SiegeEngine 

  attr_reader :health_points, :attack_power, :gold, :food, :lumber

  def initialize
    @health_points = 400
    @attack_power = 50
    @gold = 200
    @food = 3
    @lumber = 60
  end

end