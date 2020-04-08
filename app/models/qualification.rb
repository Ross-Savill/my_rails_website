class Qualification < ApplicationRecord
  validates :topic, length: { minimum: 3 }
  validates :level, presence: true
  validates :grade, presence: true
end
