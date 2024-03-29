class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    user_ids = current_user.timeline_user_ids
    @posts = Post.includes(:user).where(user_id: user_ids).order("created_at DESC")
  end

  def show
    @post = Post.includes(comments: [:user]).find(params[:id])
    @can_moderate = (current_user == @post.user)
  end
end
