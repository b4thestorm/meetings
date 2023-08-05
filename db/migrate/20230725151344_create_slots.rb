class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.datetime :start_time

      t.timestamps
    end
  end
end
