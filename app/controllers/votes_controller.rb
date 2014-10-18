class VotesController < ApplicationController

  def create
    @context = context_obj
    @vote = Vote.new(user_id: current_user.id, voteable_id: @context.id, voteable_type: context_type)
    if current_user.already_voted_this?(@context, context_type)
      redirect_to context_path
    else
      @vote.save
      @context.update(vote_count: @context.vote_count + 1)
      redirect_to context_path
    end
  end


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
