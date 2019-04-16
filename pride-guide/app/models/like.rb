class Like < ActiveRecord::Base 
    belongs_to :user
    belongs_to :post
    belongs_to :review
    # belongs_to :likeable, polymorphic: true
end