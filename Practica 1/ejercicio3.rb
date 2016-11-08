
def reemplazar (text)
	text.gsub('{', 'do\n').gsub('}', '\nend')
end

text = "3.times { |i| puts i }"
puts reemplazar(text)