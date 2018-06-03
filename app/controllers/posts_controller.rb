class PostsController < ApplicationController
  def index
    # Show all blog posts
  end

  def new
    # Used for new blog posts
  end

  def create
    # Used to create a new blog post
    # render plain: params[:post].inspect
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def edit
    # Edit blog post
  end

  def update
    # Used to update blog posts
  end

  def show
    # Used to show indavidual blogs
    @post = Post.find(params[:id])
  end

  def destroy
    # Used to delete a blog
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
