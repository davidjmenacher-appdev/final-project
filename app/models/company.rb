# == Schema Information
#
# Table name: companies
#
#  id                  :integer          not null, primary key
#  name                :string
#  URL                 :string
#  description         :string
#  total_funding       :float
#  sector              :string
#  industry            :string
#  sub_industry        :string
#  country             :string
#  state               :string
#  city                :string
#  vc_backed           :string
#  last_funding_round  :string
#  last_funding_date   :string
#  last_funding_amount :float
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Company < ApplicationRecord
    validates :name, :URL, :sector, :industry, :state, :city, presence: true
    validates :URL, uniqueness: true
end
