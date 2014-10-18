class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def show
		@link = Link.find(params[:id])
		@comment = Comment.new
		@comments = @link.comments
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(link_params)
	end

	def link_params
		params.require(:link).permit(:title, :url, :language, :user_id, :vote_count)
	end

end
