class ArticlesController < ApplicationController
def index
	@articles=Article.all
end
def show
	@articles=Article.find(params[:id])
	end
def new
end
def create
	@articles=Article.create(article_params)
	redirect_to article_path(@articles)
end
def search
	@title = params[:article][:title]
	@article=Article.where("title = '#{@title}'")
end
	private
    def article_params
    params.require(:article).permit(:acc_no, :title, :author, :edition, :publisher)
	end
end
