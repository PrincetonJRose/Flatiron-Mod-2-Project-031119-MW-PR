class Gender < ApplicationRecord
    has_many :user_genders
    has_many :users, through: :user_genders
    has_many :resource_genders
    has_many :resources, through: :resource_genders
end
