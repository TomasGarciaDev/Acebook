class ProfileController < ApplicationController
  
  def index
    @all_posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
    redirect_to '/'
  end

  def index
    @all_my_posts = Post.all.where("users_id LIKE ?", session[:current_user_id])
    @all_my_posts_likes_count = 0
    @all_my_posts.each do |post|
      @all_my_posts_likes_count += post.likes.count
    end
  
    @all_my_posts_count = 0
    @all_my_posts.each do |post|
      @all_my_posts_count += 1
    end
  end
end