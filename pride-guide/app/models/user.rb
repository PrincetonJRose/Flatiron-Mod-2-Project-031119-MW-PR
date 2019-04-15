class User < ApplicationRecord

    has_secure_password

    belongs_to :state, optional: true
    has_many :user_genders
    has_many :genders, through: :user_genders
    has_many :user_orientations
    has_many :orientations, through: :user_orientations
    has_many :user_pronouns
    has_many :pronouns, through: :user_pronouns
    has_many :posts
    has_many :reviews
    has_many :likes
    
    validates :username, length: { in: 6..16 }
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, presence: true
    validates :password, length: { in: 6..16 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
