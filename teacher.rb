require './person'

class Teacher < Person
  def inittialize(specialization, age, name = 'Unkown')
    super(age, name, true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
