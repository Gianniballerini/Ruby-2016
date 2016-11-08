# Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para probarlo. 
# Reverso debe contener los siguientes métodos:
# 1. #di_tcejbo : Imprime el object_id del receptor en espejo (en orden inverso).
# 2. #ssalc : Imprime el nombre de la clase del receptor en espejo.


module Reverso
	def di_tcejbo
		puts self.object_id.reverse
	end
	def ssalc
		puts self.name.reverse
	end
end