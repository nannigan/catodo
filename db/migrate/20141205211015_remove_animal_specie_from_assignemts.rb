class RemoveAnimalSpecieFromAssignemts < ActiveRecord::Migration
	  def change
  	remove_column :assignments, :animal_species
	  end
end
