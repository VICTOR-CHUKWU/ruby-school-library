require './corrector'

class Person
  attr_accessor :name, :age, :parent_permission, :rentals

  attr_writer :id

  def initialize(age, name = 'Unkown', parent_permission: true)
    @id = Random.rand(1..1000)

    @name = name

    @age = age

    @parent_permission = parent_permission

    @corrector = Corrector.new
    @rentals = []
  end

  def add_rental(person)
    @rentals.push(person)
  end

  def validate_name
    @name = @corrector.correct_name(@name)
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
