class Contato < ApplicationRecord
	searchkick
	belongs_to :user
	belongs_to :tipo

	paginates_per  6


end
