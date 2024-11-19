namespace :categories do
  desc "Backfill descriptions for existing categories"
  task backfill_descriptions: :environment do

    Category.where(description: [nil, ""]).find_each do |category|

      category.update(description: "Default description for #{category.name}")
    
    end
    puts "Backfill completed for categories descriptions."
  end
end