class PostsController < ApplicationController

  #getRequest http://localhost:3000/posts


  def index
    @posts = Post.all
    render :json => @posts
  end


  #getRequest http://localhost:3000/posts/:id
  def show
    @post = Post.find(params[:id])
  	render :json => @post
  end

  def new
  end

  #postRequest http://localhost:3000/posts/
    #Header: Content-Type (key), Content-Type (value)
    #Body:
      #title (key), 'Pizza' (value)
      #author (key), 'Jason Sutter' (value)
      #content (key), 'I like Pizza' (value)

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

  #deleteRequest http://localhost:3000/posts/:id
  def destroy
    @post = Post.find(params[:id])
  	@post.destroy()
  	redirect_to posts_path
  end


end
