class Author < ApplicationRecord
    validates :name, presence: true, uniqueness: {case_sensitive: true}
    # validates_presence_of :name <= equal to the validation above
    # validates :name, uniqueness: true <= uniqueness can be included in line 1
    validates :phone_number, length: { is: 10 } 
end
