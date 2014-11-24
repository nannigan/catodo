class TasksController < ApplicationController
	def new
		@task = Task.new
	end
	def create
		@animal = Animal.find(params[:animal_id])
		@animal.tasks.create(tasks_params.merge())
	end


	def task_params
		params.require(:task).permit(:todo, :animal_id)
	end
end
