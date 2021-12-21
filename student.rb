require './person'

class Student < Person
  def inittialize(classroom, age, name = 'Unkown')
    super(age, name, true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
