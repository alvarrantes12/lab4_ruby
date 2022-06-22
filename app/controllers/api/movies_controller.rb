module Api
  class MoviesController < ApplicationController
    before_action :set_movie, only: %i[ show edit update destroy ]
    skip_before_action :verify_authenticity_token
  
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
        render 'api/movies/show', status: :created
      else 
        render json: @movie.errors, status: :unprocessable_entity 
      end

    end


    def update
    
      if @movie.update(movie_params)
        render 'api/movies/show', status: :created
      else
        render json: @movie.errors, status: :unprocessable_entity 
      end
    end


    def destroy
      @movie.destroy
      render 'api/movies/show', status: :ok
    
    end

    private

      def set_movie
        @movie = Movie.find(params[:id])
      end

      def set_director
        @directors = Movie.all.pluck(:first_name, :last_name, :id)      
      end
       

      def movie_params
        params.require(:movie).permit(:name, :year, :director_id)
      end
  end
end 
