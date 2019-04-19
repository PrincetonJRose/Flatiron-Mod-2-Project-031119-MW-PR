class Friend < ApplicationRecord

    belongs_to :friend, class_name: "User"
    belongs_to :friender, class_name: "User"
    validates :friend_id, presence: true
    validates :friender_id, presence: true
end
