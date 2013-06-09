ActiveAdmin.register Order do

	batch_action :paid do |selection|
      Order.find(selection).each do |order|
        order.paid = true
        order.save
      end
    end
  
end
