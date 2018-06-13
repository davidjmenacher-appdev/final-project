ActiveAdmin.register Company do
  permit_params :name, :URL, :description, :total_funding, :sector, :industry, :sub_industry, :country, :state, :city, :vc_backed, :last_funding_round, :last_funding_date, :last_funding_amount

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
