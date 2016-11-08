# Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad de veces 
# que los métodos de instancia definidos en ella es invocado. 
# Utilizalo en distintas clases, tanto desarrolladas por vos como clases de la librería standard de Ruby, 
# y chequeá los resultados. El Mixin debe tener los siguientes métodos:

# 1. count_invocations_of(sym) : método de clase que al invocarse realiza las tareas necesarias para contabilizar 
# 	las invocaciones al método de instancia cuyo nombre es sym (un símbolo).

# 2. invoked?(sym) : método de instancia que devuelve un valor booleano indicando 
# 	si el método llamado sym fue invocado al menos una vez en la instancia receptora.

# 3. invoked(sym) : método de instancia que devuelve la cantidad de veces 
# 		que el método identificado por sym fue invocado en la instancia receptora.


module Countable
	def count_invocations_of(sym)
		@#{sym} = 
	end
end


# Ejemplo de uso de Countable
class Greeter
	# Incluyo el Mixin
	include Countable
	def hi
		puts 'Hey!'
	end
	def bye
		puts 'See you!'
	end
    # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
	count_invocations_of :hi
end
    a = Greeter.new
    b = Greeter.new
    a.invoked? :hi
    # => false
    b.invoked? :hi
    # => false
    a.hi
    # Imprime "Hey!"
    a.invoked :hi
    # => 1
    b.invoked :hi
    # => 0
