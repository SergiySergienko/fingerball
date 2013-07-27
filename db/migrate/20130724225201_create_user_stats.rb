class CreateUserStats < ActiveRecord::Migration
  def change
    create_table :user_stats do |t|
      t.integer :user_id
      t.string :stat_type
      t.integer :level
      t.binary :data

      t.timestamps
    end
  end
end
