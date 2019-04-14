class Orientation < ApplicationRecord
    has_many :user_orientations
    has_many :users, through: :user_orientations
end
