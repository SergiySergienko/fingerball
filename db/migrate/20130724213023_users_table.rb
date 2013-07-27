class UsersTable < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :level
      t.string :login
      t.string :password
      t.string :user_type
      t.boolean :is_active, :default => true
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
