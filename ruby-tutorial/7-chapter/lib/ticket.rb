class Ticket
    attr_reader :stamped_at, :fare
    def initialize(fare)
        @fare = fare
    end
    def stamp(station)
        @stamped_at = station
    end
end