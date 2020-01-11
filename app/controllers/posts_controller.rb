class PostsController < ApplicationController
  def index
      @posts = TPost.all
  end
  def new
      
  end

  def bookcontent
      @post = TPost.find_by(id:params[:id])
  end
  def create
  @post = TPost.new(title:params[:title], comment:params[:comment], user: session[:name])
  @post.save
  redirect_to("/posts/index")
  end
end

  