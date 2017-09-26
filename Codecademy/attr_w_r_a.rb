
class Cricket
  #  attr_accessor :name
  def initialize(name)
    @name = name
  end
  #attr_reader :name
  def name
    @name
  end

 #  attr_writer :name
  def name=(name)
    @name = name
  end

end

igor = Cricket.new("Vas9")
p igor.name
igor.name = "Denis"
p igor.name
