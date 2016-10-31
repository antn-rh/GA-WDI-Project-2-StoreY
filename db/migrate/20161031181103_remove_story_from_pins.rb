class RemoveStoryFromPins < ActiveRecord::Migration[5.0]
  def change
    remove_reference :pins, :story, foreign_key: true
  end
end
