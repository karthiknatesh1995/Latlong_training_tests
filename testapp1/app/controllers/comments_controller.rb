class CommentsController < ApplicationController
http_basic_authenticate_with name: "anonymous", password: "****", only: :delete
def create
    @form = Form.find(params[:formc_id])
    @comment = @form.comments.create(comment_params)
    redirect_to formc_path(@form)
  end
 def destroy
    @form = Form.find(params[:formc_id])
    @comment = @form.comments.find(params[:id])
    @comment.destroy
    redirect_to formc_path(@form)
  end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end

