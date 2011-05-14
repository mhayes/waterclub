class Invoice < ActiveRecord::Base
    has_many :participations
    has_many :members, :through => :participations
    after_create :add_participants
    
    protected
        def add_participants
          self.members << Member.where(:active => true)
        end
end
