class Athlete < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, inclusion: { in: %w(K M) }
  validates :birthdate, presence: true
  validates :city, presence: true
  validates :route_id, presence: true
  validates :phone, presence: true, format: { with: /\A\+?\d+\z/,
    message: "tylko cyfry, opcjonalnie poprzedzone plusem" }
  validates :email, presence: true, format: { with: /\A([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)\z/, message: "tylko poprawny adres email" }
  validates :terms_accepted, acceptance: true
  validates :gdpr_accepted, acceptance: true
end
