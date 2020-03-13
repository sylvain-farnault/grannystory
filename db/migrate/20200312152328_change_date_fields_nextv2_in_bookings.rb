class ChangeDateFieldsNextv2InBookings < ActiveRecord::Migration[5.2]
  def change
    Booking.where(duration: nil).update_all(duration: 1)
    change_column :bookings, :duration, :integer, null: false, default: 1
  end
end
