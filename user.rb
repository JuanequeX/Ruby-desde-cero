class User
  def name
    'Username'
  end
end

user1 = User.new
user2 = User.new

puts user1.name
puts user1.inspect

puts user2.name
puts user2.inspect
