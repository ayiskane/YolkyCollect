class HomeController < ApplicationController
  def index
    @memorials = Memorial.all
  end
end
