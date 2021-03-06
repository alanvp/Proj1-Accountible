# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  remember_token  :string(255)
#  photo           :text
#  team_id         :integer
#

class User < ActiveRecord::Base

  has_secure_password

  # before_create { |user| user.email = email.downcase }
  before_create :create_remember_token
=begin
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
=end
   belongs_to :team
   has_many :okrs
   has_many :invites
   has_many :todos

    private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
