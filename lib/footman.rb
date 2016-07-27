# http://classic.battle.net/war3/human/units/footman.shtml

class Footman <  Unit 

   attr_accessor  :health_points, :attack_power, :damage_power

  def initialize (health_points = 60, attack_power = 10)

    # Need to default the 2 instance variables here
    # Also also give code outside this class access
    #to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = health_points
    @attack_power = attack_power 
    @damage_power = 10

  end

  def attack!(enemy)
    enemy.damage(damage_power)
  end

  def health_points 
    @health_points
  end

  def attack_power 
    @attack_power
  end

  

end
