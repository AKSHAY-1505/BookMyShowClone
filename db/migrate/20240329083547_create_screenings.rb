class CreateScreenings < ActiveRecord::Migration[7.1]
  def change
    create_table :screenings do |t|
      t.string :time
      t.references :movie, null: false, foreign_key: true
      t.references :theatre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
