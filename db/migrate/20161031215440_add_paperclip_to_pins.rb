class AddPaperclipToPins < ActiveRecord::Migration[5.0]
  def change
    add_attachment :pins, :image
  end
end
