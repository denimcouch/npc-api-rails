class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.boolean :is_adventurer, default: true
      t.string :role, null: true
      t.integer :user_id
      
      t.timestamps
    end
  end
end
