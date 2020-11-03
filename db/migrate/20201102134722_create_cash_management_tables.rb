class CreateCashManagementTables < ActiveRecord::Migration[5.2]
  def change
    create_table :cash_management_tables do |t|
      t.integer :initial_cash
      t.integer :cash_out
      t.integer :cash_in
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
