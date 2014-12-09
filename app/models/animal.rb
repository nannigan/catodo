class Animal < ActiveRecord::Base
	has_many :tasks
	belongs_to :worker
	has_many :assignments

	 # simple_form automatically uses this for the option text.
    def name
      self.species
    end

end
