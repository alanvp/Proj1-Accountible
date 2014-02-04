class AddUserToOkrs < ActiveRecord::Migration
  def change
    add_reference :okrs, :user, index: true
  end
end
