class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.decimal :amount
      t.string :payment_method
      t.string :due_date
      t.belongs_to :type
      t.timestamps
    end
  end
end
