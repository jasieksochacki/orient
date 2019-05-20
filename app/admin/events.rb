ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :event_date, :last_entries_date
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
# show do |event|
#   attributes_table do
#     row :id
#     row :name
#     row :distance
#     row :event do |event|
#         link_to(:event_date , admin_event_path(:  event))
#     end
#   end
# end
show do |event|
  attributes_table do
    row :name
    row :event_date
    row :last_entries_date
    row :created_at
    row :updated_at
    row("Ilość zawodników") do |event|
      event.athletes.count
    end
    panel ("Trasy") do
    table_for event.routes.each do
                column("Nazwa") do |route|
                  link_to(route.name, admin_route_path(route))
                end
              column :distance
              column ("Ilość zawodników") do |route|
               route.athletes.count
             end
            end

                # column "Kod", :code
                # column "Cena [zł]", :price
                # column "Waga [g]", :weight
                # column "Kolejność wyświetlania", :preference
                # column("Foto") { |item| image_tag item.image.url(:thumb) }



          end
          active_admin_comments

  end
end
end
