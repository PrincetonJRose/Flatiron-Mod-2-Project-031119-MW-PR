class Like < ActiveRecord::Base 
    belongs_to :user
    belongs_to :post, optional: true
    belongs_to :review, optional: true
end