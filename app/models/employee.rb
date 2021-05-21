class Employee < ApplicationRecord
    belongs_to :dog
    validates_uniqueness_of :alias
end
