class Firstapp < ApplicationRecord
	validates :name, presence:  true
	validates :department, presence: true
	validates :company, presence: true
end