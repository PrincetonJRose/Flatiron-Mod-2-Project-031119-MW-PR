class Gender < ApplicationRecord

    has_many :users, through: :user_genders

    validates :name, presence: true
end
