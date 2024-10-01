class Admin::PostsController < ApplicationController
  before_action :authenticate_user!, :check_admin_role!
  before_action :set_post, only: %i[update destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to admin_post_path(@post), notice: 'Post was successfully created.'
    else
      Rails.logger.error @post.errors.full_messages.join(", ")
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to admin_posts_path, notice: 'Post was successfully updated.'
    else
      redirect_to root_path, notice: 'Error while deleting post.'
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path, notice: 'Post was successfully deleted.'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :tags, :show)
  end

  def check_admin_role!
    redirect_to root_path, alert: 'You are not authorized to perform this action.' unless current_user.is_admin?
  end
end
