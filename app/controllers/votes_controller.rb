class VotesController < ApplicationController

  private
  def vote_params
    params.require(:vote).permit(:user_id, :voteable_id)
  end

  def voteable_is_comment?
    params[:comment_id] ? true : false
  end

  def context_obj
    voteable_is_comment? ? Comment.find(params[:comment_id]) : Link.find(params[:link_id])
  end

  def context_type
    voteable_is_comment? ? "Comment" : "Link"
  end

  def context_path
      voteable_is_comment? ? link_path(context_obj.link) : link_path(context_obj)
  end


end
