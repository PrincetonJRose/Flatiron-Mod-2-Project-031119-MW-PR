class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :resource
    # has_many :likes, as: :likeable

end