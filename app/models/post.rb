class Post < ApplicationRecord
	validates :post_date, presence: true
	validates :message, presence: true
	validates :title, presence: true
end
