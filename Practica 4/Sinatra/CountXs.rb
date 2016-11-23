class CountXs
	def initialize(app)
		@app = app
	end

	def call(env)
		status, headers, body = @app.call(env)
		headers['X-Xs-Counts'] = contarX(body)
		[status, headers, body]
	end

	def contarX(b)
		count = 0
		b.each { |aux| 
			count = count + (aux.split("").select { |char| char[/x/] }.length)
		}
		count.to_s
	end
end