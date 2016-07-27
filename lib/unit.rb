 class Unit 

    attr_reader  :health_points, :attack_power, :damage_power

  def initialize(health_points, attack_power)
      @health_points = health_points
      @attack_power = attack_power 
      @damage_power = 3
  end

  def health_points 
    @health_points
  end

  def attack_power 
    @attack_power
  end


  def attack!(enemy)
    enemy.damage(damage_power)
  end

  def damage(n)
    @health_points -= n
  end

end
