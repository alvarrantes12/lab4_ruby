module Api
class MoviesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_movie, only: %i[ show edit update destroy ]
  before_action :set_directors


  def index
    @movies = Movie.all
  end


  def show; end

 
  def new
    @movie = Movie.new
  end

  def edit; end

 
  def create
    @movie = Movie.new(movie_params)

      if @movie.save
        render 'api/show/movies', status: :created
      else
        render json: @movie.errors, status: :unprocessable_entity
      end
  end

  def update
      if @movie.update(movie_params)
        render 'api/show/movies', status: :created
      else
        render json: @movie.errors, status: :unprocessable_entity
      end
  end


  def destroy
    @movie.destroy

      render 'api/show/movies', status: :destroyed
  end

  private

    def set_movie
      @movie = Movie.find(params[:id])
    end

    def set_directors
      @directors = Director.all.pluck(:first_name, :last_name, :id)
    end


    def movie_params
      params.require(:movie).permit(:name, :year, :director_id)
    end
end
end