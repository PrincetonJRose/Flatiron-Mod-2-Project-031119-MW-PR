class Post < ActiveRecord::Base 
    belongs_to :user
    has_many :likes # , as: :likable
    has_many :comments
end