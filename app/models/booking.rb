class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :seats

  after_create :assign_seats

  private

  def asign_seats
    seats = [51] #LIST OF SEATS TO BE BOOKED TO BE RETURNED FROM FRONT END

    seats.each do |seat|
      s = Seat.find(seat) 
      s.booking_id = self.id
      s.is_booked = true 
      s.save
    end
    
  end


end
