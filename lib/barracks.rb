class Barracks 


  attr_reader :gold, :food
# def gold
# @gold =gold
# end

  def initialize
    @gold = 1000
    @food = 80
  end


  def can_train_footman?
     gold > 135 && food > 2

  end


  def train_footman

    if can_train_footman?
       @gold -= 135
       @food -= 2
       new_footman= Footman.new
    else
    end 
  end 
end
