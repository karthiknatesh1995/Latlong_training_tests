class FormcController < ApplicationController
	http_basic_authenticate_with name: 'anonymous', password: '****'
	def index
		@demo1 =Form.all
	end
	def show
		@demo1 = Form.find(params[:id])
	end
	def new
		@demo1 = Form.new
	end
	def edit
		@form = Form.find(params[:id])
	end
	def create
		@demo1 = Form.new(params.require(:formc).permit(:title, :text))
		if @demo1.save
			redirect_to formc_path(@demo1)		
		else
			render 'new'
		end
	end
	def update
		@demo1 = Form.find(params[:id])
		if @demo1.update(params.require(:formc).permit(:title, :text))
			redirect_to formc_path(@demo1)		
		else
			render 'edit'
		end
	end
	def destroy
		@obj1 = Form.find(params[:id])
		@obj1.destroy

		redirect_to formc_index_path
	end
end
