class Tachador
	def initialize(app)
		@app = app
	end

 # A Rack application (@app) is a Ruby object (not a class) that responds to call. 
 # It takes exactly one argument, the environment (env) and returns an Array 
 # of exactly three values: The status, the headers, and the body.

	def call(env) 
		status, headers, body = @app.call(env) 
		new_body = ''
		body.each { |dato| new_body << tacharNums(dato) } 
		headers['Content-Length'] = new_body.length.to_s
		[status, headers, [new_body]]
	end

	def tacharNums(dato)
		new_dato = ''
		if dato =~ /[0-9]/
			dato.split("").each { |aux| 
				if aux =~ /[0-9]/
					new_dato << 'x'
				else
					new_dato << "#{aux}"
				end
			}
		new_dato
		else
			dato
		end
	end
end