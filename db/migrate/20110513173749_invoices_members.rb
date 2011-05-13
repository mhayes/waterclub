class InvoicesMembers < ActiveRecord::Migration
  def self.up
    create_table :invoices_members, :id => false do |t|
        t.integer :member_id, :null => false
        t.integer :invoice_id, :null => false
    end
    add_index(:invoices_members, [:member_id, :invoice_id], :unique => true)
  end

  def self.down
    drop_table :invoices_members
  end
end
