require 'json'

class Tools

  file = File.read("contact_book.json")
  $contact_book = JSON.parse(file)

  def view
    puts "."*88
    if $contact_book.size == 0
      puts "*"*88
      puts "Sorry, no contacts!"
      puts "*"*88
    else
      for i in 0...$contact_book.size
        key = $contact_book.keys[i]
        value = $contact_book[$contact_book.keys[i]]
        puts "\t\t#{key}"
        value.each_slice(2) do |address, phone|
         puts "Address:"
         address.each {|x| puts x}
         puts "\nPhones:"
         phone.each {|x| puts x}
        end
        puts "."*88
      end
    end
  end

  def search
    if $contact_book.size == 0
      puts "*"*88
      puts "Sorry, no contacts for searching."
      puts "*"*88
    else
      loop do
        puts "_"*88
        puts "Please, еnter name of the contact to search for(type 'exit' for leaving):"
        contact_name = gets.chomp
        break if contact_name == 'exit'
        if $contact_book[contact_name].nil?
          puts "_"*88
          puts "There is no such contact in the database."
        else
          puts "."*88
          puts "\t\t#{contact_name}"
          $contact_book[contact_name].each_slice(2) do |address, phone|
           puts "Address:"
           address.each {|x| puts x}
           puts "\nPhones:"
           phone.each {|x| puts x}
           puts "."*88
          end
         end
       end
    end
  end

  def add
    puts "\nPlease enter name:"
    key_name = gets.chomp
    if $contact_book[key_name].nil?
      value = []
      address_value = []
      phone_value = []
      puts "Please enter address:"
      address = gets.chomp
      address_value << address
      loop do
        puts "Did you want add more address?('yes' or 'no'):"
        addres_choice = gets.chomp.downcase
        case addres_choice
        when 'yes'
          puts "Please enter address:"
          address = gets.chomp
          address_value << address
        when 'no'
          break
        else
          puts "Sorry, I didn't understand you, try again."
        end
      end
      puts "Please enter phone number:"
      phone = gets.chomp
      phone_value << phone
      loop do
        puts "Did you want add more phone numbers?('yes' or 'no'):"
        phone_choice = gets.chomp.downcase
        case phone_choice
        when 'yes'
          puts "Please enter phone number:"
          phone = gets.chomp
          phone_value << phone
        when 'no'
          break
        else
          puts "Sorry, I didn't understand you, try again."
        end
      end
      value << address_value
      value << phone_value
      $contact_book[key_name] = value

      File.write("contact_book.json", $contact_book.to_json)
      puts "_"*88
      puts "Congratulations, new contact has been added!"
      puts "_"*88
    else
      puts "_"*88
      puts "Sorry, but such contact already exists."
      puts "_"*88
    end
  end

  def update
    if $contact_book.size == 0
      puts "*"*88
      puts "Sorry, no contacts for update."
      puts "*"*88
    else
      loop do
        puts "_"*88
        puts "Here a contact list:"
        for i in 0...$contact_book.size
          puts $contact_book.keys[i]
        end
        puts "\nEnter the name of contact, that you want to update(type 'exit' for leaving):"
        choice = gets.chomp
        break if choice == 'exit'
        if $contact_book[choice].nil?
          puts "_"*88
          puts "Sorry,there is no such contact in system"
        else
          value = $contact_book[choice]
          loop do
            puts "_"*88
            puts "Select what you want to change - 'name', 'address' or 'phone'(type 'exit' for leaving):"
            select_choice = gets.chomp
            break if select_choice == 'exit'
            case select_choice
            when 'name'
              puts "_"*88
              puts "Please type a new name:"
              new_name = gets.chomp
              $contact_book[new_name] = $contact_book.delete choice
            when 'address'
              puts "_"*88
              puts "Here is the current contact address:"
              address = value[0]
              address.each {|x| puts x}
              puts "_"*88
              puts "Please enter new address:"
              new_address = gets.chomp
              value[0] = []
              value[0] << new_address
              loop do
                puts "_"*88
                puts "Did you want add more address?('yes' or 'no'):"
                addres_choice = gets.chomp.downcase
                case addres_choice
                when 'yes'
                  puts "_"*88
                  puts "Please enter address:"
                  new_address = gets.chomp
                  value[0] << new_address
                when 'no'
                  break
                else
                  puts "_"*88
                  puts "Sorry, I didn't understand you, try again."
                end
              end
            when 'phone'
              puts "_"*88
              puts "Here is the current contact phone:"
              phone = value[1]
              phone.each {|x| puts x}
              puts "_"*88
              puts "Please enter new phone:"
              new_phone = gets.chomp
              value[1] = []
              value[1] << new_phone
              loop do
                puts "_"*88
                puts "Did you want add more phones?('yes' or 'no'):"
                phone_choice = gets.chomp.downcase
                case phone_choice
                when 'yes'
                  puts "_"*88
                  puts "Please enter phone:"
                  new_phone = gets.chomp
                  value[1] << new_phone
                when 'no'
                  break
                else
                  puts "_"*88
                  puts "Sorry, I didn't understand you, try again."
                end
              end
            else
              puts "_"*88
              puts "Sorry, I didn't understand you, try again."
            end
          end
       end
      end
    end
    File.write("contact_book.json", $contact_book.to_json)
  end

  def delete
    if $contact_book.size == 0
      puts "*"*88
      puts "Sorry, no contacts to delete!"
      puts "*"*88
    else
      loop do
        puts "_"*88
        puts "Here a contact list:"
        for i in 0...$contact_book.size
          puts $contact_book.keys[i]
        end
        puts "\nEnter the name of contact, that you want to delete(type 'exit' for leaving):"
        choice = gets.chomp
        break if choice == 'exit'
        if $contact_book[choice].nil?
          puts "_"*88
          puts "Sorry,there is no such contact in system"
        else
          puts "*"*88
          puts "Are you sure you want to delete #{choice}('yes' or 'no')?"
          y_n_c = gets.chomp
          case y_n_c
          when 'yes'
            $contact_book.delete(choice)
            puts "*"*88
            puts "Contact has been deleted!"
          when 'no'
            puts "_"*88
            puts "Contact has not been deleted."
          else
            puts "_"*88
            puts "Sorry, I didn't understand you, try again."
          end
        end
      end
    end
    File.write("contact_book.json", $contact_book.to_json)
  end

end

class Interface

  tool= Tools.new

  loop do

    puts "_"*88
    puts "What would you like to do?"
    puts "-- Type 'view' to view a contact list;"
    puts "-- Type 'search' to search for a specific contact;"
    puts "-- Type 'add' to add a new contact;"
    puts "-- Type 'update' to update a contact;"
    puts "-- Type 'delete' to delete a contact;"
    puts "-- Type 'exit' for end."
    puts "_"*88

    choice = gets.chomp.downcase
    case choice
    when 'view'
      tool.view
    when 'search'
      tool.search
    when 'add'
      tool.add
    when 'update'
      tool.update
    when 'delete'
      tool.delete
    when 'exit'
      break
    else
      puts "*"*88
      puts "Sorry, I didn't understand you, try again."
      puts "*"*88
    end
  end

end

Interface.new
