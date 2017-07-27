require "test/unit"
extend Test::Unit::Assertions

class Language
  # def self.new(*params)
  #   obj = Obj.create
  #   obj.initialize(*params)
  #   return obj
  # end

  attr_reader :hey
 attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end



  def hey=(x)
    @hey = x
  end

  def job
    @job
  end

  
 def heyjob(y, z)
   @hey = y
   @job = z
 end

 def blowjob
  [@hey, @job]
end

end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
assert_equal ruby.job, "Yukihiro Matsumoto"
ruby.job = "Lol"
assert_equal ruby.job, "Lol"
assert_equal ruby.hey, nil
ruby.hey = "Ho"
assert_equal ruby.hey, "Ho"
ruby.heyjob("Yay", "Job")
assert_equal ruby.hey, "Yay"
assert_equal ruby.job, "Job"
# p ruby.blowjob # => ["Yay", "Job"]
assert_equal ruby.blowjob, ["Yay", "Job"]
