#Corrige el siguiente código para instanciar el objeto y generar la salida de manera correcta.

class Car
	attr_reader :model, :year
	def initialize(model, year)
		@model = model
 		@year = year
	end
end
carro = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{carro.model} del año #{carro.year}!"