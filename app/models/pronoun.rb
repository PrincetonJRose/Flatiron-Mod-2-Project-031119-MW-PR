class Pronoun < ApplicationRecord
    has_many :user_pronouns
    has_many :users, through: :user_pronouns
end
