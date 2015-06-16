class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user,   only: :destroy

	def create
		@comment = current_user.comments.build(comment_params)
		if @comment.save
			flash[:success] = "Comment create!"
			redirect_to @comment.entry
		else
			flash[:danger] = @comment.errors.full_messages
			redirect_to @comment.entry
		end
	end

	def destroy 
		@comment.destroy
    	flash[:success] = "Comment deleted"
    	redirect_to request.referrer ||@comment.entry
		else

	end

	private

    def comment_params
      params.require(:comment).permit(:body, :entry_id)
    end

    def correct_user
      @comment = current_user.comments.find_by(id: params[:id])
      redirect_to root_url if @comment.nil?
    end
end
