# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Invite < ActiveRecord::Base
  belongs_to :user
end
