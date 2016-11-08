=begin

Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto
Time y que calcule la cantidad de minutos que faltan para ese momento. Si el parámetro de fecha no
es provisto, asumí que la consulta es para la medianoche de hoy. Por ejemplo:

    cuanto_falta? Time.new(2015, 12, 31, 23, 59, 59)
    # Debe retornar la cantidad de minutos que faltan para las 23:59:59 del 31/12/2015

    cuanto_falta?
    # Debe retornar la cantidad de minutos que faltan para la medianoche de hoy

=end

def cuanto_falta?(time=Time.now)
	puts "time = #{time}"
	puts "no se como calcular midnight de hoy con Time sin on rails"
end
cuanto_falta?
cuanto_falta? Time.new(2015, 12, 31, 23, 59, 59)