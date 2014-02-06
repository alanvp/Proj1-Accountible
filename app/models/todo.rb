# == Schema Information
#
# Table name: todos
#
#  id           :integer          not null, primary key
#  todo         :string(255)
#  pct_complete :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#  week_created :string(255)
#

class Todo < ActiveRecord::Base
  belongs_to :user
end
