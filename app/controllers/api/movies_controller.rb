module Api
  class MoviesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_movie, only: %i[ show edit update destroy ]
    before_action :set_directors


    def index
      @movies = Movie.all
    end


    def show;end


    def new
      @movie = Movie.new
    end


    def edit;end

    def create
      @movie = Movie.new(movie_params)


        if @movie.save
          render 'api/movies/show', status: :created

        else
          render json: @movie.errors, status: :unprocessable_entity

        end

    end

    # PATCH/PUT /movies/1 or /movies/1.json
    def update
  
        if @movie.update(movie_params)
          render 'api/movies/show', status: :created

        else
          render json: @movie.errors, status: :unprocessable_entity
     
        end
     
    end

    # DELETE /movies/1 or /movies/1.json
    def destroy
      @movie.destroy

      render 'api/movies/index', status: :ok
     
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_movie
        @movie = Movie.find(params[:id])
      end

      def set_directors
        @directors = Director.all.pluck(:first_name, :last_name)
      end

      # Only allow a list of trusted parameters through.
      def movie_params
        params.require(:movie).permit(:name, :year, :director_id)
      end
  end
end
