class CustomPronoun < ApplicationRecord
    has_many :custom_user_pronouns
    has_many :users, through: :custom_user_pronouns
    validates :name, presence: true
end
