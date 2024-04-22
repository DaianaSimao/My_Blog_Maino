class Tag < ApplicationRecord
  has_many :tag_posts, dependent: :destroy
  validates :nome, presence: true, uniqueness: true
  before_save :capitalize_nome

  def capitalize_nome
    self.nome = self.nome.capitalize
  end

  def criar_tags(tags)
    tags_post = []
    tags_names = tags.split(",").map(&:strip)
    tags_names.each do |tag_name|
      tag = Tag.where("nome ILIKE ?", "%#{tag_name}%").first
      tag = salvar_tag(tag_name) if tag.nil?
      tags_post << tag.id
    end
    tags_post
  end

  private

  def salvar_tag(nome)
    Tag.create(nome: nome.strip)
  end
end
