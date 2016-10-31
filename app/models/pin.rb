class Pin < ApplicationRecord
  belongs_to :story
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: {
    small: "64x64",
    med: "100x100",
    large: "200x200"
  }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
