=begin
	Modelá con una jerarquía de clases algo sencillo que represente la siguiente situación:
	Tres tipos de vehículo: Auto , Moto y Lancha
	Los tres tipos arrancan usando una llave.
	El auto, adicionalmente, requiere que no esté puesto el freno de mano 
	y que el cambio esté en punto muerto. 
	La moto, por otra parte, requiere una patada (sin la llave). 
	La lancha arranca con la lave y listo.
	El arranque de los tres vehículos se prueba en un taller. La especificación de Taller es la siguiente:
	class Taller
		def probar(objeto)
			objeto.arrancar
		end
	end
	Suponé que, posteriormente, el taller necesita probar una motosierra. 
	¿Podrías hacerlo? ¿Cómo? ¿Qué concepto del lenguaje estás usando para poder realizar esto?
=end

class Taller
	def probar(objeto)
		objeto.arrancar
	end
end

class vehiculo
	key = true;
end

class auto < vehiculo
	freno = ""
	cambio = ""
	def arrancar
		freno = "off"
		cambio = "punto muerto"
		key = true
		if(freno = "off" and cambio = "punto muerto" and key)
			puts "se arranco sin problemas"
			true
		else
			puts "no se pudo arrancar"
			false
		end
	end
end

class moto < vehiculo

end