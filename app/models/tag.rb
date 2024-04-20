class Tag < ApplicationRecord
  has_many :tag_posts, dependent: :destroy

  before_save :capitalize_name

  def capitalize_name
    self.nome = self.nome.capitalize
  end
end
