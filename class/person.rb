require "test/unit"
extend Test::Unit::Assertions

class Person
  def initialize(name, job)
    def name(name)
      p name
      and
    @name = name
    @job = job
  end
end

person = Person.new("vasia", "cleaning")
assert_equal person.name, "vasia"
assert_equal person.job, "cleaning"
