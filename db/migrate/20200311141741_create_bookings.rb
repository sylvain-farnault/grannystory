class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :granny, foreign_key: true, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.float :price, null: false


      t.timestamps
    end
  end
end
