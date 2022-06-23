class DirectorsController < ApplicationController
    before_action :set_director, only: %i[ show edit update destroy ]

    def index
      @directors = Director.all
    end
  
    def show; end
  
    def new
      @director = Director.new
    end
  
    def edit; end
  
    def create
      @director = Director.new(director_params)
  
      respond_to do |format|
        if @director.save
          format.html { redirect_to director_url(@director), notice: t('activerecord.created') }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
  
      if @director.update(director_params)
        redirect_to director_url(@director), notice: "Director was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  
    end
  
    def destroy
      @director.destroy
  
      redirect_to directors_url, notice: "Director was successfully destroyed."
    end
  
    private
  
    def set_director
      @director = Director.find(params[:id])
    end
  
    def director_params
      params.require(:director).permit(:first_name, :last_name, :region, :id_number, :level)
    end
end
