numbers = [1,2,3,4,5,6,7,8,9,10]

# result = numbers.inject{ |sum, number| sum + number}

# puts result

names = ["Juan", "Ramon", "Oswaldo"]
phones = ["314-123-1321", "312-123-4123", "314-143-4680"]

result = names.inject({}) do |phone_list, name|
  phone_list[name] =  phones[names.index(name)]
  phone_list
end

puts result
