numbers = [1,2,3,4,5]

# result = numbers.map{|number| number ** 2}

# puts result
# puts '-------'
# puts numbers

numbers.map! {|number| number ** 2}


puts numbers
