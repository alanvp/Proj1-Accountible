class SiteController < ApplicationController

	def index
	end
	
	def invite
	end

  def create_invites
    invites = params.require(:invites).permit(:emails)
    email_arr = invites["emails"].delete(" ").split(',')
    email_arr.each do |email|
      invite = Invite.create(email: email)
      current_user.invites << invite  
    end
  end
end

