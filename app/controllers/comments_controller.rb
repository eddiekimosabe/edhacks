class CommentsController < ApplicationController
	def create
		@link = Link.find(params[:link_id])
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id 
		@comment.link_id = @link.id

		if @comment.save
			redirect_to @link
		else
			render :template =>  'links/show'
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:text, :vote_count)
	end
end
