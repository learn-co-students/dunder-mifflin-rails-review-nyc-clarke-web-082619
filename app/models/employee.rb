class Employee < ApplicationRecord
    belongs_to :dog

    validates :first_name, uniqueness: { case_sensitive: false }
    validates :last_name, uniqueness: { case_sensitive: false }
    validates :title, uniqueness: { case_sensitive: false }
end
