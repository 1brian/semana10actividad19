class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    puts "El motor se ha encendido"
  end
end

class Car < Vehicle
  @@contador = 0
  def initialize(model, year)
    super
    @@contador += 1
  end

  def self.cantidad_de_instancias
     @@contador
  end
end

  10.times do
    Car.new("audi", 2000)
  end
  puts Car.cantidad_de_instancias
  
