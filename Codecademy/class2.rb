class Computer
$manufacturer = "Mango Computer, Inc."
@@files = {hello: "Hello, world!"}

def initialize(username, password)
@username = username
@password = password
end

def current_user
@username
end

def self.display_files
@@files
end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.



class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
     @@messages_sent += 1
 end
end

class Email < Message
    def initialize(subject)
    @subject = subject
end
end

my_message = Message.new(3,5)
