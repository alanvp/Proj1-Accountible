class AddWeekCreatedToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :week_created, :string
  end
end
