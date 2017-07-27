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
