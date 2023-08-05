class AddStudentsToSlots < ActiveRecord::Migration[7.0]
  def change
    add_reference :slots, :student, foreign_key: true
  end
end
