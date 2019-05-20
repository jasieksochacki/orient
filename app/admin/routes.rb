ActiveAdmin.register Route do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :distance, :event_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  show do |route|
    attributes_table do
      row :id
      row :name
      row :distance
      row :event do |route|
        link_to(route.event.name, admin_event_path(route.event))
      end
      row :created_at
      row :updated_at
      row("Ilość zawodników") do |route|
        route.athletes.count
      end
            panel("Zawodnicy") do
                table_for route.athletes.each do
                  column("Imię i nazwisko") do |athlete|
                    link_to(athlete.first_name + ' ' + athlete.last_name, admin_athlete_path(athlete))
                  end
                  column :city
                  column :phone
                  column :gender
                  column :birthdate
                  # column "Kod", :code
                  # column "Cena [zł]", :price
                  # column "Waga [g]", :weight
                  # column "Kolejność wyświetlania", :preference
                  # column("Foto") { |item| image_tag item.image.url(:thumb) }
                end

            end
            active_admin_comments

    end
  end

end
