class ProfilesController < ApplicationController
  before_action :find_post, only: [:show]

  def show
    @name = @post.user_name
    @friend = User.find_by_name(@name)
    @posts = Post.where('user_name' => @friend.name).order(created_at: :desc).all
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
