class ArticlesController < ApplicationController
def index
	@articles=Article.all
end
def show
	@articles=Article.find(params[:id])
	end
def new
end
def edit
	@article = Article.find(params[:id])
end
def create
		@articles1=Article.new(article_params)
		if @articles1.save
			redirect_to article_path(@articles1)
		else
			flash[:notice]="Data exists or Data incomplete"
			redirect_to new_article_path
		end
end
def update
  @article = Article.find(params[:id])
 
  @article.update!(article_params)
  redirect_to article_path(@article)
  # else
  #   render 'edit'
  # end
end
def search
	@title = params[:article][:title]
	@article=Article.where("title ilike '#{@title}'")
end
def destroy
	@article= Article.find(params[:id])
	@article.destroy
	redirect_to articles_path
end
	private
    def article_params
    params.require(:article).permit(:acc_no, :title, :author, :edition, :publisher)
	end
end
