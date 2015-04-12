class Contact
  attr_writer :first_name, :middle_name, :last_name

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end
end

alan = Contact.new
alan.first_name = "Alan"
alan.last_name = "Dunbar"
puts alan.full_name

bob = Contact.new
bob.first_name = "Bob"
bob.middle_name = "B"
bob.last_name = "Boberson"
puts bob.full_name