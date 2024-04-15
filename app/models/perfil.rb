class Perfil < ApplicationRecord
  belongs_to :user
  validates :nome, presence: true
  validates :sobrenome, presence: true
  dependent: :destroy
end
