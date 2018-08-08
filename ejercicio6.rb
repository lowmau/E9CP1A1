#Se tiene un archivo llamado catalogo.txt que contiene los nombres de los productos que
#ofrece una tienda junto con los precios de las tallas L, M, S y XS.

#El siguiente código define la clase Product y además realiza la lectura del archivo.

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

#Se pide:
#Optimizar el código implementando el operador splat al momento de instanciar los productos.
#Generar un método que permita calcular el promedio de precio por producto.