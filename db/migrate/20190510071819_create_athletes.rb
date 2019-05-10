class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :first_name, limit: 20
      t.string :last_name, limit: 50
      t.string :gender, limit: 1
      t.date :birthdate
      t.string :city, limit: 50
      t.integer :route_id
      t.string :phone, limit: 15
      t.string :team, limit: 50
      t.string :email, limit: 25

      t.timestamps
    end
  end
end
