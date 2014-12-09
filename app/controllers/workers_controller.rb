class WorkersController < ApplicationController
	def new
		@worker = Worker.new
	end

	def create
		@worker = Worker.create(worker_params)
		redirect_to  worker_path(@worker.id)
	end

	def show
		@worker = Worker.find(params[:id])
		@assignment = Assignment.new
		@animals = Animal.all
	end

	def index
		@workers = Worker.all
	end

private
	def worker_params
		params.require(:worker).permit(:name)
	end
end
