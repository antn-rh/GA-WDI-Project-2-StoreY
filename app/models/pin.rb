class Pin < ApplicationRecord
  belongs_to :story
  has_many :comments, dependent: :destroy
end
