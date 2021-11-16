def sum(a ,b)
  a + b
end

def positive_sum(a, b)
  result = a + b

  return "El valor es negativo" unless result.positive?
  result
end

puts positive_sum(-1,-1)
