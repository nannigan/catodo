class Worker < ActiveRecord::Base
	has_many :assignments
	has_many :animals, through: :assignments
	has_many :tasks, through: :animals
end
