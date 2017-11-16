class Item < ApplicationRecord
  default_scope { order(created_at: :asc) }
  validates :name, length: { minimum: 3 }, presence: true
  belongs_to :user
end
