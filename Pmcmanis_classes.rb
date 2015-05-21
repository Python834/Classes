############################################################
#
#  Name:        Patrick McManis
#  Assignment:  Classes
#  Date:        4/21/2014
#  Class        CIS 283
#  Description: Create a program which uses Ruby Classes to store object information.
#
############################################################

class Person
  def initialize( first_name, last_name, age, hair, eye)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @hair_color = hair
    @eye_color = eye
  end
  def first_name
    return @first_name
  end
  def first_name=( first_name )
    @first_name = first_name
  end
  def last_name
    return @last_name
  end
  def last_name=( last_name )
    @last_name = last_name
  end
  def age
    return @age
  end
  def age=( age )
    @age = age
  end
  def hair
    return @hair_color
  end
  def hair=( hair )
    @hair_color = hair
  end
  def eye
    return @eye_color
  end
  def eye=( eye )
    @eye_color = eye
  end
  def to_s
    return "#{@first_name} #{@last_name} is #{@age} and has #{@hair_color} hair and #{@eye_color} eyes."
  end

end

class Address
  def initialize( line1, line2, city, state, zip)
    @line1 = line1
    @line2 = line2
    @city = city
    @state = state
    @zip = zip
  end
  def line1
    return @line1
  end
  def line1=( line1 )
    @line1 = line1
  end
  def line2
    return @line2
  end
  def line2=( line2 )
    @line2 = line2
  end
  def city
    return @city
  end
  def city=( city )
    @city = city
  end
  def state
    return @state
  end
  def state=( state )
    @state = state
  end
  def zip
    return @zip
  end
  def zip=( zip )
    @zip = zip
  end
  def to_s
    return "#{@line1} APT#{@line2}, #{@city}, #{@state} #{@zip}"
  end
end

class Character
  def initialize( name, race, hit_points, gold)
    @name = name
    @race = race
    @hit_points = hit_points
    @gold = gold
    @weapons = []
    @clothing = []
  end
  def name
    return @name
  end
  def name=( name )
    @name = name
  end
  def race
    return @race
  end
  def race=( race )
    @race = race
  end
  def hit_points
    return @hit_points
  end
  def hit_points=( hit_points )
    @hit_points = hit_points
  end
  def gold
    return @gold
  end
  def gold=( gold )
    @gold = gold
  end
  def add_wep( weapon )
    @weapons << weapon
  end
  def drop_wep( weapon )
    @weapons.delete(weapon)
  end
  def weapons
    return @weapons.join(', ')
  end
  def add_clothing( clothing )
    @clothing << clothing
  end
  def drop_clothing( clothing )
    @clothing.delete(clothing)
  end
  def clothing
    return @clothing.join(', ')
  end
  def to_s
    return "The character #{@name} is a(n) #{@race} and had #{@hit_points} and #{@gold}"
  end
end

person = Person.new('Patrick', 'McManis', 23, 'brown', 'green')
address = Address.new('834 E. Decatur', '', 'Spokane', 'Washington', '99208')
character = Character.new('Python', 'Elf', 1000, 5000)
# to_s print outs
puts person.to_s
puts address.to_s
puts character.to_s

# add weapons and display

character.add_wep('Axe')
character.add_wep('Bow')
character.add_wep('Sword')
character.add_wep('Hammer')
puts character.weapons

# add clothing and display

character.add_clothing('Tunic')
character.add_clothing('Cap')
character.add_clothing('Shoulders')
character.add_clothing('Pants')
puts character.clothing

# drop weapons and redisplay

character.drop_wep('Bow')
puts character.weapons
character.drop_wep('Sword')
puts character.weapons

# drop clothing and redisplay

character.drop_clothing('Cap')
puts character.clothing
character.drop_clothing('Shoulders')
puts character.clothing