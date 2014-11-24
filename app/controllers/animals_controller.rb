class AnimalsController < ApplicationController
	def new
		@animal = Animal.new
	end

	def create
		@animal = Animal.create(animal_params)

		redirect_to root_path
	end
	def show
	 @animal = Animal.find(params[:id])
	 # @tasks = @animal.tasks.all
	 # @task = @animal.tasks.build
	end

	def index
		@animals = Animal.all
	end

	private
	def animal_params
		params.require(:animal).permit(:species)
	end
end
