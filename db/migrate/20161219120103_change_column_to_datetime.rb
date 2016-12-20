class ChangeColumnToDatetime < ActiveRecord::Migration[5.0]
  def change
  	change_column :flights, :duration, :datetime
  end
end
