class AnimalsController < ApplicationController
	def new
		@animal = Animal.new
	end

	def create
		@animal = Animal.create(animal_params)
		redirect_to  animal_path(@animal.id)
	end

	def show
	 @animal = Animal.find(params[:id])
	 @task = Task.new
	end

	def index
		@animals = Animal.all
	end

	private
	def animal_params
		params.require(:animal).permit(:species)
	end
end
