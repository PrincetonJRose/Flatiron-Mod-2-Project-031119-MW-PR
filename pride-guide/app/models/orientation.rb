class Orientation < ApplicationRecord
    has_many :users, through: :user_orientations

    validates :name, presence: true
end
