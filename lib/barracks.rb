class Barracks < Unit


  attr_reader :gold, :food, :lumber
# def gold
# @gold =gold
# end

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    super(500, 0)
  end

  def can_train_footman?
    gold >= 135 && food >= 2

  end

  def train_footman
    return nil unless can_train_footman?
    @gold -= 135
    @food -= 2
    Footman.new

  end 

  def train_peasant 
    return nil unless can_train_peasant?
    @gold -= 90
    @food -= 5
    Peasant.new

  end

  def can_train_peasant?
    gold >= 90 && food >= 5
    
  end



end

