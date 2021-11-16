class User
  attr_accessor :name, :age, :email
  def initialize(name, age, email)
    # Variables de instancia
    @name = name
    @age = age
    @email = email
  end
end

# Creacion de dos usarios adjudicando sus valores que queremos
# Que se muestren en pantalla
juan = User.new("Juaneque", 25, "ramon.g.uz37@gmail.com")
heriberto = User.new("Heriberto", 22, "hfigueroa@ucol.mx")

puts juan.inspect
puts heriberto.inspect

puts juan.name
# Modificacion del nombre del ususario juan, esto sucede gracias a que instacniamos la variable
# name en el attr_accessor dandonos permiso de escritura y lectura de la variable
juan.name = "Juan Ramon"
puts juan.name
