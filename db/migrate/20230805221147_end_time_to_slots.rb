class EndTimeToSlots < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :end_time, :datetime
  end
end
