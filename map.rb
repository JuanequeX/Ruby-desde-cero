users = [{name: "juan", last_name: "Aguilar"}, {name: "Oswaldo", last_name: "Pineda"}]

# full_names = users.map do |user|
#   "#{user[:name]} #{user[:last_name]}"
# end

# puts full_names

# user = { name: "Juan", last_name: "Aguilar", twitter: "Juanequex" }

# upcase_user = user.map { |key, value| [ key, value.upcase ] }.to_h

# puts upcase_user

numbers = [2,4,6,8]

exponentiation_numbers = numbers.map{|number| number**2}

puts exponentiation_numbers
