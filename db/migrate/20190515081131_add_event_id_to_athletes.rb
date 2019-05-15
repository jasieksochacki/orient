class AddEventIdToAthletes < ActiveRecord::Migration[5.2]
  def change
    add_column(:athletes, :event_id, :integer)
  end
end
