
=begin
  Escribí una función más genérica, parecida a la del ejercicio anterior, 
  que reciba como parámetro un string y un número n , 
  y que realice una rotación de n lugares de las letras del string y
  retorne el resultado. Por ejemplo:
  rot("¡Bienvenidos a la cursada 2015 de TTPS Opción Ruby!", 13)
  # => "¡Ovrairavqbf n yn phefnqn 2015 qr GGCF Bcpvóa Ehol!"
=end

def rot(string, num)
  if num > 25
    num = num - (25 *(num/25))
  end
  new_UpFirst = (65 + num).chr
  new_UpLast = (65 + num - 1).chr
  new_DwnFirst = (97 + num).chr
  new_DwnLast = (97 + num - 1).chr
  #puts new_UpFirst
  #puts new_UpLast
  #puts new_DwnFirst
  #puts new_DwnLast
  case num
  when 0
    puts string
  when 1
    puts string.tr "A-Za-z", "#{new_UpFirst}-ZA#{new_DwnFirst}-za"
  when 25
    puts string.tr "A-Za-z", "ZA-#{new_UpLast}za-#{new_DwnLast}"
  else
    puts string.tr "A-Za-z", "#{new_UpFirst}-ZA-#{new_UpLast}#{new_DwnFirst}-za-#{new_DwnLast}"
  end
end