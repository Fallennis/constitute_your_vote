class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :politician_id

      t.timestamps null: false
    end
  end
end
