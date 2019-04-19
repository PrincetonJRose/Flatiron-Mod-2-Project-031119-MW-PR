class CustomUserGender < ApplicationRecord
    belongs_to :user, dependent: :destroy
    belongs_to :custom_gender
end
