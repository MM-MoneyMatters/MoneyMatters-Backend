class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.belongs_to :type
      t.belongs_to :user
      t.belongs_to :transaction
      t.integer :amount
      t.timestamps
    end
  end
end
