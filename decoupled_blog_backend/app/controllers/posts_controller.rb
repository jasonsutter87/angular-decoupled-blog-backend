class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :json => @posts
  end

  def show
    @post = Post.find(params[:id])
  	render :json => @post
  end

  def new
  end

  def create
    @post = Post.create(title: params[:title], author: params[:author], content: params[:content])
    redirect_to posts_path
  end

  def edit
  end

  def update
    @post = Post.find(params[:id])
  	@post.update(title: params[:title], author: params[:author], content: params[:content])
  	render :json => @post
  end

  def destory
    @post = Post.find(params[:id])
  	@post.destroy()
  	redirect_to posts_path
  end


end
