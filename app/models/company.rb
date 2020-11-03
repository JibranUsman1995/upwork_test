class Company < ApplicationRecord
	has_many :cash_management_tables, dependent: :destroy
end
