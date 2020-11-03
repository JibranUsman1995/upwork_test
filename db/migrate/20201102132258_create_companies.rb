class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
  	unless ActiveRecord::Base.connection.tables.include?('companies')
	    create_table :companies do |t|
	      t.string :name
	      t.string :country

	      t.timestamps
	    end
	  end
  end
end
