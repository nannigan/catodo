class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :todo
    	t.integer :animal_id

      t.timestamps
    end
  end
end
