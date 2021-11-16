numbers = [1,2,3,4,5,6,7,8,9,10]

# result = numbers.select {|number| number.even?}

# puts "Select"
# puts result

# result_reject = numbers.reject {|number| number.odd?}

# puts "--------"
# puts "Reject"
# puts result_reject

# result = numbers.select {|number| number % 3 == 0}

# puts "Select"
# puts result

# result_reject = numbers.reject {|number| number % 3 != 0 }

# puts "--------"
# puts "Reject"
# puts result_reject

students = {
  juan: 99,
  manuel: 30,
  carlos: 60,
  Eduardo: 50,
  Mario: 65
}

approved_student = students.select{|key, value| value >= 60}

puts 'Select'
puts approved_student

approved_student_reject = students.reject{|key, value| value < 60 }

puts 'reject'
puts approved_student_reject
