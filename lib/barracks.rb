class Barracks

  attr_reader :gold, :food 

  def initialize (gold= 1000, food= 80)
    @gold = gold
    @food = food
  end

  def gold 
    @gold
  end

  def food
    @food
  end

  def train_footman 
    @gold -= 135 
    @food -= 2
    if can_train_footman? == true
     Footman.new
   else 
     nil 
    end
  end

  def can_train_footman?
    if  gold > 135 &&  food > 2 
      return true 
    end
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    if can_train_peasant? == true 
      Peasant.new
    else 
      nil
    end
  end

  def can_train_peasant?

    if gold > 90 && food > 5
      return true
    end

  end

end
