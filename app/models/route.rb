class Route < ApplicationRecord
  validates :name, presence: true
  validates :distance, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 100 }
  validates :event_id, presence: true

  belongs_to :event
  has_many :athletes
end
