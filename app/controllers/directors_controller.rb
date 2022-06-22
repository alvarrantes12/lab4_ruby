class DirectorsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_director, only: %i[ show edit update destroy ]

  def index
    @directors = Director.all
  end

  def show
  end

  def new
    @director = Director.new
  end

  def edit
  end

  def create
    @director = Director.new(director_params)

      if @director.save
        render :show, status: :created, location: @director
      else
        render json: @directors.errors, status: :unprocessable_entity 
    end
  end

  def update
      if @director.update(director_params)
        render :show, status: :ok, location: @director 
      else
        render json: @director.errors, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @director.destroy
      format.json { head :no_content }
    end
  end

  private
    def set_director
      @director = Director.find(params[:id])
    end

    def director_params
      params.require(:director).permit(:name, :last_name)
    end
end
