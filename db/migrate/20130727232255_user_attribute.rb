class UserAttribute < ActiveRecord::Migration

  def self.up
    create_table :user_attributes do |t|
      t.integer :user_id
      t.string  :attribute_type
      t.string  :value
      t.timestamps
    end
    add_index :user_attributes, :user_id
    add_index :user_attributes, :attribute_type
    add_index :user_attributes, [:user_id, :attribute_type]
  end

  def self.down
    drop_table :user_attributes
  end

end
