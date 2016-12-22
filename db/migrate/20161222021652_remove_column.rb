class RemoveColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bookings, :user_id
  	remove_column :bookings, :passenger_id
  	remove_foreign_key :bookings, :user
  	remove_foreign_key :bookings, :passenger
  end
end
