class RemoveColumnsFromPassengers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :passengers, :booking, foreign_key: true
  end
end
