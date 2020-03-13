class ChangeDateFieldsNextInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :end_date, :date
    add_column :bookings, :duration, :integer
  end
end
