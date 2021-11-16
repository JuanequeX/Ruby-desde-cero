capacity = 20

case capacity
when  0
  puts 'El tanque esta vacio'
when 1..20
  puts 'El tanque esta por vaciarse'
when 21..70
  puts 'El tanque aun tiene agua'
when 71..100
  puts 'El tanque esta casi lleno'
else
  'Error: El dato ingresdo es invalido'
end
