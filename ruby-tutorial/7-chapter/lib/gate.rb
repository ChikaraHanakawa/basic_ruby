require_relative 'ticket'
class Gate
    STATIONS = [:umeda, :juso, :mikuni]
    FARES = [160, 190]
    def initialize(station)
        @station = station
    end
    def enter(ticket)
        ticket.stamp(@station)
    end
    def exit(ticket)
        fare = calc_fare(ticket)
        fare <= ticket.fare
    end
    def calc_fare(ticket)
        #本来であれば、privateなメソッドである必要がある
        from = STATIONS.index(ticket.stamped_at)
        to = STATIONS.index(@station)
        distance = to - from
        FARES[distance - 1]
    end
end
