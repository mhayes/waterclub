class Invoice < ActiveRecord::Base
    after_create :add_participants
    
    has_and_belongs_to_many :members
    
    protected
        def add_participants
            self.members << Member.where(:active => true)
        end
end
