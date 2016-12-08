class Race
  attr_accessor :cars

  def initialize
    @cars = [Car.new, Car.new]
    random = Random.new

    @cars[0].accelerate(random.rand(1000))
    @cars[1].accelerate(random.rand(1000))

  end

  
