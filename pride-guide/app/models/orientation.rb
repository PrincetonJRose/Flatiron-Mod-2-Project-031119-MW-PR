class Orientation < ApplicationRecord
    has_many :user_orientations
    has_many :users, through: :user_orientations
    has_many :resource_orientations
    has_many :resources, through: :resource_orientations
end
