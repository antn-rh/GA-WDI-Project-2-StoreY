class AddStoryIdToPins < ActiveRecord::Migration[5.0]
  def change
    add_reference :pins, :story, foreign_key: true
  end
end
