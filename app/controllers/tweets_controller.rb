class TweetsController < ApplicationController

  def show
    movie = Movie.find(params[:movie_id])
    @tweets = movie.tweets
  end

end
