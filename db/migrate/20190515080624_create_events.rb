class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.date :last_entries_date
      t.timestamps
    end
  end
end
