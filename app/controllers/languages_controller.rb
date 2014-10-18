class LanguagesController < ApplicationController

	def show
		@language = Language.find(params[:id])
		@links = Link.where(language: @language)
	end

end
