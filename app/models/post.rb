class Post < ApplicationRecord
  title :string
  content :string

  validates :title, presence: true
  validates :content, presence: true

end