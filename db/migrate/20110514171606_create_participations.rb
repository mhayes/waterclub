class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      t.integer :member_id
      t.integer :invoice_id

      t.timestamps
    end
    add_index(:participations, [:member_id, :invoice_id], :unique => true)
  end

  def self.down
    drop_table :participations
  end
end
