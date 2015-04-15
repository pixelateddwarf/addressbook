require "./contact"

class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def print_contact_list
    puts "Contact List"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new

alan = Contact.new
alan.first_name = "Alan"
alan.last_name = "Dunbar"
alan.add_phone_number("Home", "123-456-7890")
alan.add_phone_number("Work", "456-789-0123")
alan.add_address("Home", "123 Main St.", "", "Valodsta", "GA", "123456")

address_book.contacts.push(alan)


address_book.print_contact_list