class RemoveColumnFromBookings < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bookings, :user
  end
end
