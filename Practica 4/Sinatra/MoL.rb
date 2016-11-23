class MoL
	def initialize(app)
		@app = app
	end

 # A Rack application (@app) is a Ruby object (not a class) that responds to call. 
 # It takes exactly one argument, the environment (env) and returns an Array 
 # of exactly three values: The status, the headers, and the body.

	def call(env) 
		status, headers, response = @app.call(env)
		num = rand(43) #0-42 
		response = randomize(num)
		headers['Content-Length'] = response.length.to_s
		status = newStatus(num)
		[status, headers, [response]]
	end

	def randomize(int)
		if int == 42
			"#{int}, GANASTE!!"
		else
			"#{int}, perdiste :("
		end
	end

	def newStatus(int)
		if int == 42
			200
		else
			404
		end
	end

end