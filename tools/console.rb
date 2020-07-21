require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Listings
list1 = Listing.new("bronx")
list2 = Listing.new("manhattan")
list3 = Listing.new("bronx")
list4 = Listing.new("bronx")

# Guests
guest1 = Guest.new("jzavier")
guest2 = Guest.new("joanna")

# Trips
Trip.new(list1, guest1)
Trip.new(list2, guest2)
Trip.new(list1, guest2)
Trip.new(list2, guest1)

binding.pry
0