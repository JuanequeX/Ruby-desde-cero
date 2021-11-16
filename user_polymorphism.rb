class User
  # Instancia que permite la modificacion de los atributos de la clase
  attr_accessor :name, :age, :email, :active
  attr_reader :id

  def initialize(name, age, email)
    # Variables de instancia
    @name = name
    @age = age
    @email = email
    @active = true
    # Variable de instancia privada
    @id = generate_id
  end

  def greet
    "Hola soy #{name} y tengo #{age} años"
  end

  def active?
    active
  end

  def deactive!
    self.active = false
  end

  private

  def generate_id
    letters = ('a'..'z').to_a
    numbers = rand(100..999)
    random_letters = letters.sample(3).join
    "#{numbers}#{random_letters}"
  end

end

class Admin < User
  def greet
    "Hola soy #{name} y tengo #{age} años"
  end

  private

  def generate_id
    prefix = "Admin"
    generate_id = super

    "#{prefix} - #{generate_id}"
  end
end

class Moderator < User
  def greet
    "Hola soy #{name} y tengo #{age} años"
  end

  private

  def generate_id
    prefix = "Moderator"
    generate_id = super

    "#{prefix} - #{generate_id}"
  end
end

# Creacion de dos usarios adjudicando sus valores que queremos
# Que se muestren en pantalla
juan = Admin.new("Juaneque", 25, "ramon.g.uz37@gmail.com")
heriberto = Moderator.new("Heriberto", 22, "hfigueroa@ucol.mx")

users = [juan, heriberto]

user_id = users.map{|user| user.id}
user_greetings = users.map{|user| user.greet}

puts user_id
puts user_greetings
