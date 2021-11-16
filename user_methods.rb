class User
  # Instancia que permite la modificacion de los atributos de la clase
  attr_accessor :name, :age, :email, :active

  def initialize(name, age, email)
    # Variables de instancia
    @name = name
    @age = age
    @email = email
    @active = true
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

  def self.available_roles
    ['admin', 'moderator', 'premium', 'free']
  end

end

# Creacion de dos usarios adjudicando sus valores que queremos
# Que se muestren en pantalla
juan = User.new("Juaneque", 25, "ramon.g.uz37@gmail.com")
heriberto = User.new("Heriberto", 22, "hfigueroa@ucol.mx")

puts juan.greet
puts '-----'
puts heriberto.greet
puts '-----'

# puts User.available_roles

puts juan.active?
juan.deactive!
puts juan.active?
