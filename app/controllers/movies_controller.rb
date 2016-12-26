class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @cart_action = @movie.cart_action current_user.try :id
    @comments = @movie.comments
    @comment = Comment.new
  end
end
