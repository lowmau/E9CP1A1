#Utilizando el mismo archivo del ejercicio anterior:

#La tienda desea generar un nuevo catálogo que no incluya el último precio correspondiente 
#a cada producto debido a que ya no comercializa productos de talla XS.

#Se pide generar un método que reciba como argumento los datos del archivo catalogo.txt y 
#luego imprima el nuevo catálogo solicitado en un archivo llamado nuevo_catalogo.txt

class Product	
 def initialize(name, *sizes)
	@name = name
	@large = sizes[0].to_i
	@medium = sizes[1].to_i
	@small = sizes[2].to_i
	@xsmall = sizes[3].to_i
 end
 def promedio
	(@large + @medium + @small + @xsmall) / 4
 end
 def nuevo(data)
 	file = File.open('nuevo_catalogo.txt', 'w')
 	data.each do |i|
 		n = i.split(", ")
 		n.delete(n[-1])
 		file.write "#{n}\n"
 	end
	file.close
 end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
 ls = prod.split(', ')
 products_list << Product.new(*ls)
end

puts products_list
puts "Promedio de precios: #{products_list[0].promedio}"
puts "Promedio de precios: #{products_list[1].promedio}"
puts "Promedio de precios: #{products_list[2].promedio}"
puts "Promedio de precios: #{products_list[3].promedio}"