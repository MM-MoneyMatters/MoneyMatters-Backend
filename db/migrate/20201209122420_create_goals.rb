class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.belongs_to :user
      t.string :name
      t.integer :amount
      t.timestamps
    end
  end
end
