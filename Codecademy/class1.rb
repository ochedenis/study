class Language
  @@type = "programming"
  def initialize(name, creator)
    @name = name
    @creator = creator
  end

  def description
    "I'm #{@name} and I was created by #{@creator}! #{@@type}"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")
p ruby.description
p python.description
p javascript.description




# class Person
#   def vs9life(name, job)
#     @name = name
#     @job = job
#   end
# end
#
# person = Person.new("vasia", "cleaning")
# assert_equal person.name, "vasia"
# assert_equal person.job, "cleaning"
