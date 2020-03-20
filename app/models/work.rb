class Work < ApplicationRecord
  validates :organisation, length: { minimum: 3 }
  validates :role, presence: true
  validates :years, presence: true
  validates :tasks, length: { minimum: 10 }
end
