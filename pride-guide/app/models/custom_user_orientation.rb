class CustomUserOrientation < ApplicationRecord
    belongs_to :custom_orientation
    belongs_to :user, dependent: :destroy
end
