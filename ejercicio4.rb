#Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la
#siguiente estructura:

class Dog
	def initialize(perro)
		@perro = perro
	end
	def ladrar
		"Beethoven esta ladrando!"
	end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dogs = Dog.new(propiedades)
p "#{dogs.ladrar}"

#Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. 
#Luego generar un método llamado ladrar que, mediante interpolación, imprima 
#"Beethoven está ladrando!"

