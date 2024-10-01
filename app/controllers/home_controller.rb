class HomeController < ApplicationController
  def index
    @posts = Post.where(show: true)
  end
end
