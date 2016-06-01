

class Unit 
  attr_reader :health_points, :attack_power

  def initialize(health_points,attack_power)
    @health_points = health_points # 100
    @attack_power = attack_power   # 3
  end

  def damage(damage_points)

    @health_points -= damage_points
  end

  def attack!(enemy_unit)
    # damage = unit(3)
    # case enemy_unit
    # when Barracks then @enemy_unit.damage(@attack_power / 2)
    # else
      enemy_unit.damage(@attack_power)
    # end
  end

end
    