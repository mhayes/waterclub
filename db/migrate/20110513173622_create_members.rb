class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.boolean :active, :default => true, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
