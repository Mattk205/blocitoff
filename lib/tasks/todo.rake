namespace :todo do
  desc "Delete items older than 7 days"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.now - 10.days).destroy_all
  end

end
