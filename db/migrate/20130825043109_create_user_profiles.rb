class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.text :bio
      t.string :location
      t.string :url
      t.integer :user_id, :null => false

      t.timestamps
    end
    add_index :user_profiles, :user_id
  end
end
