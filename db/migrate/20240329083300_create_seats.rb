class CreateSeats < ActiveRecord::Migration[7.1]
  def change
    create_table :seats do |t|
      t.string :seat_no
      t.boolean :is_booked
      t.references :booking, null: false, foreign_key: true
      t.references :screening, null: false, foreign_key: true

      t.timestamps
    end
  end
end
