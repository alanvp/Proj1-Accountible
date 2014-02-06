# == Schema Information
#
# Table name: okrs
#
#  id         :integer          not null, primary key
#  objective  :string(255)
#  kr1        :string(255)
#  kr2        :string(255)
#  kr3        :string(255)
#  kr4        :string(255)
#  kr5        :string(255)
#  kr6        :string(255)
#  kr7        :string(255)
#  kr8        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Okr < ActiveRecord::Base
	belongs_to :user
	
end
