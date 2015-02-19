class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.text :description_text
      t.integer :politician_id

      t.timestamps null: false
    end
  end
end
