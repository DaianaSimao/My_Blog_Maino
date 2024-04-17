class Post < ApplicationRecord
  belongs_to :user
  has_many :comentarios, dependent: :destroy
  has_many :tag_posts, dependent: :destroy
end
