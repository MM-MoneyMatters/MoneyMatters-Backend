class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.integer :cost
      t.string :payment_method
      t.belongs_to :type
      t.timestamps
    end
  end
end
