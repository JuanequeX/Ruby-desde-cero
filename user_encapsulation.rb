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

# Creacion de dos usarios adjudicando sus valores que queremos
# Que se muestren en pantalla
juan = User.new("Juaneque", 25, "ramon.g.uz37@gmail.com")
heriberto = User.new("Heriberto", 22, "hfigueroa@ucol.mx")

# Si quisieramos llamar direcramente el metofo generate_id, no se nos permitiria
# ya que este metodo se encuentra  privado
# puts juan.generate_id
puts juan.id
