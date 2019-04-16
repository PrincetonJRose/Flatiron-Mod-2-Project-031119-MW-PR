class Pronoun < ApplicationRecord
    has_many :user_pronouns
    has_many :users, through: :user_pronouns
    has_many :resource_pronouns
    has_many :resources, through: :resource_pronouns
end
