class CustomUserPronoun < ApplicationRecord
    belongs_to :user
    belongs_to :custom_pronoun
end
