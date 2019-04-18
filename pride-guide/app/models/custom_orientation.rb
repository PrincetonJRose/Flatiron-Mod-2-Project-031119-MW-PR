class CustomOrientation < ApplicationRecord
    has_many :custom_user_orientations
    has_many :users, through: :custom_user_orientations
    validates :name, presence: true
end
