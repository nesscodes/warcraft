class SiegeEngine < Unit

  attr_reader :health_points, :attack_power, :gold, :food, :lumber

  def initialize
    @health_points = 400
    @attack_power = 50
    @gold = 200
    @food = 3
    @lumber = 60
  end



  def attack!(barracks_enemy)
    if barracks_enemy.class == Barracks
      barracks_enemy.damage(attack_power * 2)
    else 
      barracks_enemy.damage(attack_power)
    end
  end

end