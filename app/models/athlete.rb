class Athlete < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :city, presence: true
  validates :route_id, presence: true
  validates :phone, presence: true
  validates :team, presence: true
  validates :email, presence: true
end
