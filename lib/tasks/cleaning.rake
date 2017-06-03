namespace :vmt do
  desc "Clearing unpaid/unheld orders"
  task :cleaning => :environment do
    Order.where(updated_at: 7.years.ago..(Time.now-15.minutes),paid: nil, held: nil).destroy_all
  end
end