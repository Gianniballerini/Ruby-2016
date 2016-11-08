Dada una cadena cualquiera, y utilizando los métodos que provee la clase String , realizá las siguientes operaciones sobre el string :
1. Imprimilo con sus caracteres en orden inverso.
2. Eliminá los espacios en blanco que contenga.
3. Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
4. Cambiálasvocalespornúmeros(a por 4, e por 3, i por 1, o por 0, u por 6 ).

def ejercicio9(string)
	puts string.reverse
	puts string.strip #quita los espacios de adelante y atras
	puts string.gsub(/\s+/, "") #quita todos los espacios. \s+ es una regex que significa whitespace
	puts string.each_codepoint {|c| print c, ' ' }
	puts string.gsub(/[aeiou]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => '0', 'u' => 6)

end