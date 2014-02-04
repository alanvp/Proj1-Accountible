class AddUserToInvites < ActiveRecord::Migration
  def change
    add_reference :invites, :user, index: true
  end
end
