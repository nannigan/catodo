class AddAnimalSpeciesToAssignment < ActiveRecord::Migration
  def change
  	add_column :assignments, :animal_species, :string
  end
end
