require_relative './corrector'

require_relative './rental'

class Person
  attr_accessor :name, :age, :parent_permission, :rentals

  attr_reader :id

  def initialize(age:, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)

    @name = name

    @age = age

    @parent_permission = parent_permission

    @corrector = Corrector.new

    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
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
    of_age? || @parent_permission
  end
end
