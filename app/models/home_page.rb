class HomePage < ApplicationRecord
  has_many_attached :images
  validates :title, presence: true
  validates :about_me, presence: true
end
