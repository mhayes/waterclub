class Member < ActiveRecord::Base
    has_many :participations
    has_many :invoices, :through => :participations
end
