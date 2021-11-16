module Logger
  def log_session
    "#{self.class.name} a iniciado sesion"
  end
end

class User
  # Aqui usamos el include para hacer uso del modulo
  include Logger
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

puts juan.log_session
puts heriberto.log_session
