class Tag < ApplicationRecord
  has_many :tag_posts, dependent: :destroy
  validates :nome, presence: true, uniqueness: true
  before_save :capitalize_name

  def capitalize_name
    self.nome = self.nome.capitalize
  end
end
