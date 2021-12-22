require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unkown')
    super(age, name)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.animals.push(self) unless classroom.student.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
