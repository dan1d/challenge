module V1
  class MoviesController < ApplicationController
    # I could use fast_json api for JSON:API specifications, I'm picking the easiest way here
    def index
      movies = Movie.all
      render json: { movies: movies.as_json(methods: [:casting, :directors, :producers, :release_date_roman]) }
    end

    def show
      movie = Movie.find(params[:id])
      render json: { movie: movie.as_json(methods: [:casting, :directors, :producers, :release_date_roman]) }
    end
  end
end
