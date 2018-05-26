module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @@definir
  end

  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
puts conejo.dieta
Herviboro.definir

#R: Es mejor usar mixins ya que suplanta de manera efectifa lo que ruby no tiene, que es herencia multiple.
# De esa manera podemos convinar y darle uso a los metodos de un module y los metodos de una clase.
