require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "active members should be added on invoice creation" do
    assert Member.where(:active => true).count == 1, "only 1 active member should exist"
    i = Invoice.create!(:amount => 34.50, :invoice_date => Date.today)

  end
end
