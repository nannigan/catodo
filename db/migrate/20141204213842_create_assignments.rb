class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
    	t.integer :animal_id
    	t.integer :worker_id

      t.timestamps
    end
  end
end
