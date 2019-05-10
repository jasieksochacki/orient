json.extract! athlete, :id, :first_name, :last_name, :gender, :birthdate, :city, :route_id, :phone, :team, :email, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
