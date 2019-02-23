class Tipo < ApplicationRecord
	belongs_to :user
	has_many :contatos
end
