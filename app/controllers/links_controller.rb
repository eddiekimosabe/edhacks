class LinksController < ApplicationController

	def index
		@links = Link.all.order("vote_count DESC")
	end


	def show
		@link = Link.find(params[:id])
		@comment = Comment.new
		@comments = @link.comments.order("vote_count DESC")
	end

	def new
		return redirect_to '/', alert: "Login or Signup first" unless current_user
    @link = current_user.links.build
	end

	def create
    return redirect_to '/', alert: "Login or Signup first" unless current_user

    @link = current_user.links.build(link_params)
    if @link.save
      redirect_to link_path(@link)
    else
      redirect_to new_link_path, :alert => @link.errors.full_messages.join(". ")
    end
	end

	def link_params
		params.require(:link).permit(:title, :url, :language, :user_id, :vote_count)
	end

end
