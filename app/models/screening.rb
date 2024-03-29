class Screening < ApplicationRecord
  belongs_to :movie
  belongs_to :theatre
  has_many :seats , dependent: :destroy

  after_create :create_seats

  private 

  def create_seats
    obj = ScreeningHelper::CreateSeats.new
    obj.create_seats_for_show(self)
  end

end
