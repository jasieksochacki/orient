class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.integer :event_id
      t.string :name, limit: 20
      t.integer :distance
      t.timestamps
    end
  end
end
