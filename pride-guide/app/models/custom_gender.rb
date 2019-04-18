class CustomGender < ApplicationRecord
    has_many :custom_user_genders
    has_many :users, through: :custom_user_genders
    validates :name, presence: true
end
