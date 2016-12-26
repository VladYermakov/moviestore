class Movie < ApplicationRecord
  has_many :carts
  has_many :users, through: :carts
  has_many :comments

  def poster
    poster_url
  end

  def imdb
    "http://www.imdb.com/title/#{imdb_id}/"
  end

  def cart_action(current_user_id)
    user = users.find_by id: current_user_id
    if user
      'Remove from'
    else
      'Add to'
    end
  end
end
