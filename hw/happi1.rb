class Client
  attr_accessor :name, :age, :gender, :kids, :pets

  def initialize(name, age, gender, kids)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = {}
  end

  def display_pets
    pets.values.join("\n")
  end

  def to_s
    "Name: #{@name} - Age: #{@age} years - Gender: #{@gender} - Number of Kids: #{@kids} - Number of Pets #{@pets.count}"
  end
end

class Animal
  attr_accessor :name, :breed, :age, :gender, :toys

  def initialize(name, breed, age, gender)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @toys = []
  end

  def to_s
    "Name: #{@name} - Breed: #{breed} - Age: #{@age} years - Gender: #{@gender} - Toys: #{@toys.join(', ')}"
  end
end

class Shelter
  attr_accessor :animals, :clients

  def initialize()
    @animals = {}
    @clients = {}
  end

  def display_animals
    @animals.values.join("\n")
  end

  def display_clients
   @clients.values.join("\n")
  end

  def to_s
    "Number of Animals: #{@animals.count} - Number of Clients: #{@clients.count}"
    
  end
end



def menu_items
  puts 'Enter 1 for List of Animals'
  puts 'Enter 2 for List of Clients'
  puts 'Enter 3 to Create New Animal'
  puts 'Enter 4 to Create New Client'
  puts 'Enter 5 to Adopt an Animal'
  puts 'Enter 6 to Give the Animal to the shelter'
  puts "Enter Q to Quit"
  puts
  gets.chomp
end

$shelter=Shelter.new

def create_new_animal 
  puts "Name: "
  name = gets.chomp
  puts "Breed: "
  breed = gets.chomp
  puts "Age: "
  age = gets.to_i
  puts "Gender: "
  gender = gets.chomp
  puts "Toys: "
  toys = gets.chomp.split
  $shelter.animals[name] = Animal.new(name, breed, age, gender)
  $shelter.animals[name].toys = toys
end

def create_new_client
  puts "Name: "
  name = gets.chomp
  puts "Age: "
  age = gets.to_i
  puts "Gender: "
  gender = gets.chomp
  puts "Kids: "
  kids = gets.to_i
  $shelter.clients[name] = Client.new(name, age, gender, kids)
end

def adopt_animal
  puts $shelter.display_animals
  puts "Animals to Adopt "
  animal = gets.chomp
  puts "#{$shelter.display_clients}"
  puts "Please enter your name:"
  client = gets.chomp
  $shelter.clients[client].pets[animal] = $shelter.animals[animal]
  $shelter.animals.delete(animal)
end

def give_animal
  puts $shelter.display_clients
  puts "Please enter your name (Client):"
  client = gets.chomp
  puts "#{$shelter.clients[client].display_pets}"
  puts "Animal to Give:"
  animal = gets.chomp
  $shelter.animals[animal] = $shelter.clients[client].pets[animal]
  $shelter.clients[client].pets.delete(animal)
end

answer = menu_items

while answer != 'Q'
  case answer
  when '1' then puts $shelter.display_animals; gets
  when '2' then puts $shelter.display_clients; gets
  when '3' then create_new_animal
  when '4' then create_new_client
  when '5' then adopt_animal
  when '6' then give_animal
  end

  answer = menu_items
end

