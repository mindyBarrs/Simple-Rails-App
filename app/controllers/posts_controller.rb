class PostsController < ApplicationController
  http_basic_authenticate_with name: "mindy", password: "1234", except: [:index, :show]
  
  def index
    # Show all blog posts
    @post = Post.all
  end

  def new
    # Used for new blog posts
    @post = Post.new
  end

  def create
    # Used to create a new blog post
    # render plain: params[:post].inspect
    @post = Post.new(post_params)
    if@post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    # Edit blog post
    @post = Post.find(params[:id])
  end

  def update
    # Used to update blog posts
    @post = Post.find(params[:id])

    if@post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def show
    # Used to show indavidual blogs
    @post = Post.find(params[:id])
  end

  def destroy
    # Used to delete a blog
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
