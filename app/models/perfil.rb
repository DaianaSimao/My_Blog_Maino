class Perfil < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :nome, presence: true
  validates :sobrenome, presence: true
end
