require 'pry'
class Listing
    attr_reader :city
    @@all = []
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        self.trips.map {|trip| trip.guests}.uniq
    end

    def trip_count
        trips.count
    end

    def self.find_all_city(location)
        all.select {|listing| listing.city == location}
    end

    def self.most_popular
        max_trip_count = self.all.max_by {|trip| trip.trip_count}
    end

end














