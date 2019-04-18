class CustomUserGender < ApplicationRecord
    belongs_to :user
    belongs_to :custom_gender
end
