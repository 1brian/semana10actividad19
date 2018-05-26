module Attendence
  def study_quantity
    @@quantity
  end
end
  class Student
    include Attendence
    attr_accessor :nombre, :nota1, :nota2
    @@quantity = 0
    def initialize(nombre, nota1 = 4, nota2 = 4)
      @nombre = nombre
      @nota1 = nota1
      @nota2 = nota2
      @@quantity  += 1
    end
  end
  module Test
    def result
    super
  promedio = (@nota1 + @nota2) / 2
  if promedio > 4
    puts "Estudiante aprobado"
  else
    puts "Estudiante reprobado"
  end
end
  end
  10.times do
    Student.new('mai')
  end
  puts Student.new('hola').study_quantity
