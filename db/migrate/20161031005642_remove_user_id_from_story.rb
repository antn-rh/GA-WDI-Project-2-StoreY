class RemoveUserIdFromStory < ActiveRecord::Migration[5.0]
  def change
    remove_column :stories, :user_id, :integer
  end
end
