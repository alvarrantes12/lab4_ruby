module Api
class MoviesController < ApplicationController
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
        redirect_to movie_url(@movie), notice: t('activerecord.created')
      else
        render :new, status: :unprocessable_entity
      end
  
    end
  
    def update
      if @movie.update(movie_params)
        redirect_to movie_url(@movie), notice: t('activerecord.updated')
      else
        render :edit, status: :unprocessable_entity
      end
    end
    
      def destroy
        @movie.destroy
    
        redirect_to movies_url, notice: t('activerecord.delete')
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