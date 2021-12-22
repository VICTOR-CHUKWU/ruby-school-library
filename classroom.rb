class Classroom
  attr_accessor :label
  attr_reader :student

  def initialize(label)
    @label = label
    @student = []
  end

  def add_animal(student)
    @student.push(student)
  end
end
