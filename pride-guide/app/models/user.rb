class User < ApplicationRecord

    has_many :pronouns, through: :user_pronouns
    has_many :genders, through: :user_genders
    has_many :orientations, through: :user_orientations
    
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, presence: true
    validates :password, length: { in: 6..16 }

end
