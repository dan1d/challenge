class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
    render component: 'Movies', props: { movies: @movies }
  end
end
