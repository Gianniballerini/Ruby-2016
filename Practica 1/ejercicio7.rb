
def ejercicio7(string)
	puts "1 "
	puts string.reverse
	puts "2 "
	puts string.strip #quita los espacios de adelante y atras
	puts string.gsub(/\s+/, "") #quita todos los espacios. \s+ es una regex que significa whitespace
	puts "3 "
	puts string.each_codepoint {|c| print c, ' ' }
	puts "4 "
	puts string.gsub(/[aeiou]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => '0', 'u' => 6)
	puts string.tr('aeiou', '43106')
end


puts ejercicio7("string de prueba para el ejercicio 7")