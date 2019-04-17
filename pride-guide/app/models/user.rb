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
    has_many :resources, through: :reviews
    has_many :likes
    has_many :comments
    has_many :custom_user_genders
    has_many :custom_genders, through: :custom_user_genders
    has_many :custom_user_pronouns
    has_many :custom_pronouns, through: :custom_user_pronouns
    has_many :custom_user_orientations
    has_many :custom_orientations, through: :custom_user_orientations

    has_many :active_friends,   class_name:  "Friend", 
                                foreign_key: "friender_id", 
                                dependent: :destroy
    has_many :passive_friends,  class_name:  "Friend",
                                foreign_key: "friend_id",
                                dependent: :destroy
    has_many :friends, through: :active_friends, source: :friend
    has_many :frienders, through: :passive_friends, source: :friender

    validates :username, length: { in: 6..16 }
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, presence: true
    validates :password, length: { in: 6..16 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }


end
