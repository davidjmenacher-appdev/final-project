namespace :slurp do
  desc "TODO"
  task companies: :environment do
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "startups.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    
    csv.each do |row|
      t = Company.new
      t.name = row["Company"]
      t.URL = row["URL"]
      t.description = row["Company Description"]
      t.total_funding = row["Total Funding"]
      t.sector = row["Sector"]
      t.industry = row["Industry"]
      t.sub_industry = row["Sub-Industry"]
      t.country = row["Country"]
      t.state = row["State"]
      t.city = row["City"]
      t.vc_backed = row["VC Backed"]
      t.last_funding_round = row["Last Funding Round"]
      t.last_funding_date = row["Last Funding Date"]
      t.last_funding_amount = row["Last Funding Amount"]
      t.save
      puts "#{t.name} saved"
    end
  end

end
