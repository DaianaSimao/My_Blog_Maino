class Perfil < ApplicationRecord
  belongs_to :user, optional: true
  validates :nome, presence: true
  validates :sobrenome, presence: true
  has_one_attached :avatar
end
