class Employee < ApplicationRecord
    validates :title, :alias, uniqueness: true
    
    belongs_to :dog 

    def full_name
        "#{first_name} #{last_name}"
    end
end
