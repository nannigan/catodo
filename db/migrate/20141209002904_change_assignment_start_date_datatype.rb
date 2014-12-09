class ChangeAssignmentStartDateDatatype < ActiveRecord::Migration
  def change
  	change_column :assignments, :start_date, :string
  end
end
