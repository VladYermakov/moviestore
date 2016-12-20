class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @cart_movies = current_user.movies
  end

  def add
    current_user.carts.create movie_id: params[:movie_id]
    render json: current_user.cart_count, status: 200
  end

  def remove
    current_user.carts.find_by(movie_id: params[:movie_id]).destroy
    render json: current_user.cart_count, status: 200
  end

end
