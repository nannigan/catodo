class AnimalsController < ApplicationController
	def new
		@animal = Animal.new
	end

	def create
		@animal = Animal.create(animal_params)
		@task = Animal.task.create(task_params)
		redirect_to root_path
	end
	private
	def animal_params
		params.require(:animal).permit(:species)
	end
end
