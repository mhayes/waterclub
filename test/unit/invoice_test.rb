require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "active members should be added on invoice creation" do
    active_count = Member.where(:active => true).count
    i = Invoice.create!(:amount => 34.50, :invoice_date => Date.today)
    assert i.members.count == active_count, "#{i.members.count} members associated with this invoice, expected: #{active_count}"
  end
end
