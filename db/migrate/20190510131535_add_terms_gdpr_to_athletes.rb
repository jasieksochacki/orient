class AddTermsGdprToAthletes < ActiveRecord::Migration[5.2]
  def change
    add_column(:athletes, :terms_accepted, :boolean, default: false)
    add_column(:athletes, :gdpr_accepted, :boolean, default: false)
  end
end
