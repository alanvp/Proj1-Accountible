class CreateOkrs < ActiveRecord::Migration
  def change
    create_table :okrs do |t|
      t.string :objective
      t.string :kr1
      t.string :kr2
      t.string :kr3
      t.string :kr4
      t.string :kr5
      t.string :kr6
      t.string :kr7
      t.string :kr8

      t.timestamps
    end
  end
end
