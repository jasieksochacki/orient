class Event < ApplicationRecord
  validates :name, presence: true
  validates :event_date, presence: true
  validates :last_entries_date, presence: true

  has_many :routes
  has_many :athletes

  scope :active, -> { where("last_entries_date >= ?", Date.today) }
end
