# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  Event.create!(name: "XVII Dusiołek Górski Wiśniowa 2019", event_date: "2019-05-18",
                last_entries_date: "2019-05-18")
  first_event = Event.first
  Route.create!(event_id: first_event.id, name: "Trasa klasyczna, ok. 35 km", distance: 35)
  Route.create!(event_id: first_event.id, name: "Trasa dziecięca, ok. 7 km", distance: 7)
end
