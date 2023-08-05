class AddCoachesToSlots < ActiveRecord::Migration[7.0]
  def change
    add_reference :slots, :coach, foreign_key: true
  end
end
