class CreateAirports < ActiveRecord::Migration[5.0]
  def change
    create_table :airports do |t|
      t.string :full_name
      t.string :shortened_name

      t.timestamps
    end
  end
end
