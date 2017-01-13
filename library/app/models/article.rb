class Article < ApplicationRecord
	validates :acc_no, :title, uniqueness: true	
	validates :acc_no, :title, :author, :edition, :publisher, presence: true
end
