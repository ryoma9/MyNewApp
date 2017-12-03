class CreateDemograffics < ActiveRecord::Migration[5.1]
  def change
    create_table :demograffics do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
