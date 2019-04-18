class CustomUserPronoun < ApplicationRecord
    belongs_to :user, dependent: :destroy
    belongs_to :custom_pronoun
end
