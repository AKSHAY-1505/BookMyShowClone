class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.text :desc
      t.string :director
      t.string :cast
      t.string :cover_photo

      t.timestamps
    end
  end
end
