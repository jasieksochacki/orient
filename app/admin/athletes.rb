ActiveAdmin.register Athlete do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :first_name, :last_name, :gender, :birthdate, :city, :route_id,
        :phone, :team, :email, :event_id,  :terms_accepted, :gdpr_accepted
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    selectable_column
    column :id
    column :first_name
    column :last_name do |athlete|
      link_to(athlete.last_name, admin_athlete_path(athlete))

    end
column :event_id



    end

  end
