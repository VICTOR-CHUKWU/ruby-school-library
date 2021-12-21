require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

aunty = Teacher.new('mazi', 10, 'amadi')
puts aunty.validate_name
