module ScreeningHelper
    class CreateSeats
        def create_seats_for_show(show)
            (1..50).each do |i|
              Seat.create seat_no:"A" + i.to_s , is_booked: false , show_id: show.id 
            end

          end
    end

end