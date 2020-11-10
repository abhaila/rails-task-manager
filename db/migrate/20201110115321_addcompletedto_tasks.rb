class AddcompletedtoTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :Tasks, :completed, :boolean, default: false, null: false
  end
end
