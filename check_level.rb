def check_level(capacity)
  case capacity
  when  0
    return 'El tanque esta vacio'
  when 1..20
    return 'El tanque esta por vaciarse'
  when 21..70
    return 'El tanque aun tiene agua'
  when 71..100
    return 'El tanque esta casi lleno'
  else
    return 'Error: El dato ingresdo es invalido'
  end
end

puts check_level(10)

status = check_level(71)
puts status

status2 = check_level 40
puts status2
