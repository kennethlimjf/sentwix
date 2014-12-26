class TweetsController < ApplicationController

  def index
    movie = Movie.find(params[:movie_id])
    @tweets = movie.tweets
  end

end
