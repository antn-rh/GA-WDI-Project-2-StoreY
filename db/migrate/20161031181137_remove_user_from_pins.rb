class RemoveUserFromPins < ActiveRecord::Migration[5.0]
  def change
    remove_reference :pins, :user, foreign_key: true
  end
end
