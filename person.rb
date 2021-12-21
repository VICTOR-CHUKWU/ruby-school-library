class Person
  attr_accessor :name, :age
  attr_writer :id

  def initialize(age, name = 'Unkown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # private starts

  private

  def of_age?
    @age >= 18
  end

  # public method

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
