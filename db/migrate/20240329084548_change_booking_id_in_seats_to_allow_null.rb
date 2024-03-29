class ChangeBookingIdInSeatsToAllowNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :seats, :booking_id, true
  end
end
