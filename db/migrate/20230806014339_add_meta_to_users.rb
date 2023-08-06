class AddMetaToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :meta, polymorphic: true, null: false
  end
end
