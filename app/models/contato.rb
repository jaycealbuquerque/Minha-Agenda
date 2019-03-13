class Contato < ApplicationRecord
	searchkick
	belongs_to :user
	belongs_to :tipo

	paginates_per  10


end
