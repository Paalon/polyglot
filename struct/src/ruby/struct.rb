class Animal
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  attr_accessor :name, :weight
end

animal = Animal.new("Max", 5)
puts animal.name
puts animal.weight