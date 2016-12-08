class Race
  attr_accessor :cars

  def initialize
    @cars = [Car.new, Car.new]
    random = Random.new

    @cars[0].accelerate(random.rand(1000))
    @cars[1].accelerate(random.rand(1000))

  end

  def winner
    if cars[0].speed > cars[1].speed
      cars[0]
    else
      cars[1]
    end
  end

  def loser
    if winner == cars[0]
      cars[1]
    else
      cars[0]
    end
  end

end
