class UserPronoun < ApplicationRecord
    belongs_to :pronoun
    belongs_to :user
end
