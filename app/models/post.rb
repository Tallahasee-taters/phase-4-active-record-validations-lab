class Post < ApplicationRecord
    # Object lifecycle callback
    # before_validation :capitalize_category_name

    validates :title, presence: true
    validates :content, length: { minimum: 250}
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    # validate :true_facts 
    validates :title, format: {with: /Won't Believe|Secret|Top \d|Guess/i}
    # def capitalize_category_name
    #     self.category = self.category.capatilize
    # end

    # def true_facts
    #    if [/Won't Believe/i, /Secret/i, /Top \d/i, /Guess/i].none? {|pattern| pattern.match(title)}
    #         errors.add(:title, "Not clickbaity enough sir!")
    #     end 
    # end

end
