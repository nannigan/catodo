class Assignment < ActiveRecord::Base

	belongs_to :worker
	belongs_to :animal

	has_many :tasks, through: :animal


validates :animal_id, :presence => true
validates :worker_id, :presence => true

end
