require 'pry'
class Guest
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.guest == self }
    end

    def listings
        self.trips.map{|trip| trip.listing}.uniq
    end
    
    def trip_count
        trips.count
    end

    def self.pro_traveller
        self.all.select{|guest| guest.trip_count > 1}
    end

    def self.find_all_name(name)
        all.select {|listing| listing.name == name}
    end

end














