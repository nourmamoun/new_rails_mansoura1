class Post < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
    validates :title, presence: true
    validates :content, presence: true

end
