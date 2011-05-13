require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "active members should be added on invoice creation" do
    m1 = Member.create!(:name => "Captain Planet", :email => "captainplanet@earthwindfireandheart.com")
    i=Invoice.create!(:amount => 34.50, :invoice_date => Date.today)
    assert i.members.count == 1, "only 1 member should be attached to this invoice"
  end
end
