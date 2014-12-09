class AssignmentsController < ApplicationController
	def new
		@assignment = Assignment.new
	end

def create
	@worker = Worker.find(params[:worker_id])
	
	@worker.assignments.create(assignment_params)
	redirect_to worker_path(@worker)
end

private

	def assignment_params
		params.require(:assignment).permit(:start_date, :worker_id, :animal_id)
	end
end
