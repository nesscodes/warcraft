

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

    if enemy_unit.damage(attack_power)
    end
  end

  def dead?
    health_points <= 0
  end

end
    