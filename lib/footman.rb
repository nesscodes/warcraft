# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit


  attr_reader :health_points, :attack_power

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    # @health_points = 60
    # @attack_power = 10  
    super(60, 10)
    
  end

  # def attack!(enemy)
  #   enemy.damage(10)
  
  # end

  # # def damage
  # #   health_points -= attack_power

  # # end

  # def damage(damage_value)

  #   @health_points -= damage_value

  # end

  def attack!(enemy)
    case enemy
    when Barracks
      enemy.damage(attack_power / 2)
    else
      super
    end
  end

  def damage(attack_power)
    
    @health_points -= attack_power
  end

  def dead?
    @health_points <= 0
  end

end 