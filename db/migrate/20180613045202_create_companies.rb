class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :URL
      t.string :description
      t.float :total_funding
      t.string :sector
      t.string :industry
      t.string :sub_industry
      t.string :country
      t.string :state
      t.string :city
      t.string :vc_backed
      t.string :last_funding_round
      t.string :last_funding_date
      t.float :last_funding_amount

      t.timestamps
    end
  end
end
