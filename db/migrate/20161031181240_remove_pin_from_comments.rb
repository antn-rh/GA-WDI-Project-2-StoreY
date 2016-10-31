class RemovePinFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_reference :comments, :pin, foreign_key: true
  end
end
