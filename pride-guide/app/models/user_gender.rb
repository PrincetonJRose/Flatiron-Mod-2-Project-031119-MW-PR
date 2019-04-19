class UserGender < ApplicationRecord
    belongs_to :gender
    belongs_to :user
end
