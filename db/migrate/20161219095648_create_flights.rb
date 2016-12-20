class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :from_airport
      t.string :to_airport
      t.datetime :start
      t.datetime :duration

      t.timestamps
    end
  end
end
