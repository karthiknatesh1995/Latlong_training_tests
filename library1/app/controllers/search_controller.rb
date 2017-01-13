class SearchController < ApplicationController
	def show
		@articles=Article.where(title: params[@title])
end
