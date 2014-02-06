class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :todo
      t.string :pct_complete

      t.timestamps
    end
  end
end
