=begin
	Dado un color expresado en notación RGB, debés calcular su representación entera y hexadecimal,
	donde la notación entera se define como red + green*256 + blue*256*256 
	y la hexadecimal como el resultado de expresar en hexadecimal el valor de cada color 
	y concatenarlos en orden. Por ejemplo:

		notacion_hexadecimal([0, 128, 255])
		# => '#0080FF'
		notacion_entera([0, 128, 255])
		# => 16744448
=end

def notacion_entera(color)
	puts (color[0] + (color[1]*256) + (color[2]*256*256))
end

def notacion_hexadecimal(color)
	string = ""
	color.each do |component|
		hex = component.to_s(16)
		if component < 16
			string << "0#{hex}"
		else
			string << hex
		end
	end
	puts string
end

=begin

Esta era mi solucion original para el de hexadecimal. Pero me faltaba un 0 en algunos casos.
La solucion que quedó la encontre en internet y me gusto mas que la mia.

string = "#" + color[0].to_s(16) + color[1].to_s(16) + color[2].to_s(16)
puts string

=end