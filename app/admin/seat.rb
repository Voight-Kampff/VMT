ActiveAdmin.register Seat do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

index do
  selectable_column
  column :id
  column :column
  column :row
  column :price
  column :concert
  column :order do |seat|
  	unless seat.order.nil?
  		link_to seat.order.email, admin_order_path(seat)
  	else
  		""
  	end
  end
  column :reservation do |seat|
  	unless seat.order.nil?
  		link_to seat.reservation.id, admin_reservation_path(seat.reservation)
  	else
  		""
  	end
  end
  actions do |seat|
  	unless seat.order.nil?
    	link_to seat.order.id, admin_order_path(seat.order)
    else
  		""
  	end
  end
end

controller do
	def scoped_collection
		super.includes :order
		super.includes :concert
	end
end

end
