class TasksController < ApplicationController
	def new
		@task = Task.new
	end
	
	def create
		@animal = Animal.find(params[:animal_id])
		@animal.tasks.create(task_params)
		redirect_to animal_path(@animal)
	end

private

	def task_params
		params.require(:task).permit(:todo, :animal_id)
	end
end
