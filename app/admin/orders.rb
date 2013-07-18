ActiveAdmin.register Order do

	batch_action :paid do |selection|
      Order.find(selection).each do |order|
        order.paid = true
        order.save
        TicketMailer.ticket(order).deliver
        redirect_to "/admin/orders"
      end
    end


    index do
    	selectable_column
    	id_column
    	column("Nom", :name)
    	column :email
    	column("Rue", :street)
    	column :NPA
    	column :Ville
    	column :total do |order|
    		"#{order.total/100} CHF"
    	end
    	column :transfer
    	column :paid
    	column :billets do |order|
    		table_for order.tickets do
     			column :concert do |ticket|
        		link_to ticket.concert.shortname
      			end
      			column :normal
      			column :student
    		end
  		end
  		column :membership_id do |ticket|
  			ticket.membership.name unless ticket.membership.nil?
  		end
    	column :created_at
    	default_actions
    end

   #  index :as => :block do |order|
   #  	div :for => order do
   #    		h2 auto_link(order.name)
   #    		div do
   #      	simple_format order.street
   #    		end
   # 		end
  	# end

  csv do
    	column :name
    	column :email
    	column :street
    	column :Ville
    	column :NPA
    	column :total
    	column :transfer
    	column :paid
    	column :billets do |order|
    		table_for order.tickets do
     			column :concert do |ticket|
        		link_to ticket.concert.shortname
      			end
      			column :normal
      			column :student
    		end
  		end
  		column :membership_id do |ticket|
  			ticket.membership.name unless ticket.membership.nil?
  		end
    	column :created_at
    end

    show :title => :name do
    	panel "Billets" do
    		table_for(order.tickets) do
    			column("concert",:sortable => :id) {|ticket| link_to "##{ticket.concert.shortname}", admin_ticket_path(ticket) }
    		end
    	end
    	active_admin_comments
    end

  
end
