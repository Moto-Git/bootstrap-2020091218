class PostsController < ApplicationController
  def index
    @post = Post.order(id: :asc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
