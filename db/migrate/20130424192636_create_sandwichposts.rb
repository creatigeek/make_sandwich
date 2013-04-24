class CreateSandwichposts < ActiveRecord::Migration
  def change
    create_table :sandwichposts do |t|
      t.integer :user_id
      t.string :sandwich_type
      t.text :quote

      t.timestamps
    end
    add_index :sandwichposts, [:user_id, :created_at]
  end
end
