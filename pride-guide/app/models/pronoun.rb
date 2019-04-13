class Pronoun < ApplicationRecord
    has_many :users, through: :user_pronouns

    validates :name, presence: true
end
