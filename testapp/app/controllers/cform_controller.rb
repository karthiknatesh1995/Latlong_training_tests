class CformController < ApplicationController
	def index
		@cform=Cform.all
	end
	def show
		@cform= Cform.find(params[:id])
	end
	def new
	end
	def create
		@cform=Cform.new(params.require(:cform).permit(:title, :text))
		@cform.save
		redirect_to @cform
	end
end
