class Employee < ApplicationRecord
    belongs_to :dog
    # validates :alias, uniqueness: true
    # validates :job_title, uniqueness: true
end
