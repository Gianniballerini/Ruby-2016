def saludar
	puts "Por favor ingresa tu nombre:"
	name = gets.chomp
	puts "¡Hola, #{name}!"
end
saludar
=begin
	Escribí un script en Ruby que le pida al usuario su nombre y lo utilice para saludarlo imprimiendo en pantalla 
	¡Hola, <nombre>! . Por ejemplo:
	$ ruby script.rb
	Por favor, ingresá tu nombre:
		Matz
	¡Hola, Matz!
=end