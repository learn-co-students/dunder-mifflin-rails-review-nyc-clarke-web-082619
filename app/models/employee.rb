class Employee < ApplicationRecord
    belongs_to :dog

    def name
        "#{first_name} #{last_name}"
    end
end
