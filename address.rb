class Address
  attr_accessor :kind, :street_1, :street_2, :city, :state, :postal_code

  def to_s(format = 'short') ## short format is all on one line
    address = ''
    case format
    when 'long'              ## long address is on several lines
      address += street_1 + "\n"
      address += street_2 + "\n" if !street_2.nil?  ##if we dont have one dont include it
      address += "#{city}, #{state} #{postal_code}"
    when 'short'
      address += "#{kind}: "
      address += street_1
      if street_2
        address += " " + street_2
      end
      address += ", #{city}, #{state}, #{postal_code}"
    end
    address
  end
end

home = Address.new
home.kind = "Home"
home.street_1 = "123 Main St."
home.city = "Valdosta"
home.state = "GA"
home.postal_code = "12345"

puts home.to_s('short')
puts "\n"
puts home.to_s('long')