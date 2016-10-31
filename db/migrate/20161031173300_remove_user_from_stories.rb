class RemoveUserFromStories < ActiveRecord::Migration[5.0]
  def change
    remove_reference :stories, :user, foreign_key: true
  end
end
