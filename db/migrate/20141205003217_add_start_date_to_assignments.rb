class AddStartDateToAssignments < ActiveRecord::Migration
  def change
  	add_column :assignments, :start_date, :datetime
  end
end
