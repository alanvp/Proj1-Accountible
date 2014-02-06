class SiteController < ApplicationController

	def index
	end
	
	def invite
	end

  def create_invites

    invites = params.require(:invites).permit(:emails)
    email_arr = invites["emails"].delete(" ").split(',')
    user = current_user
    if user.team_id == nil
      team = Team.create()
      team.users << user
    end
    email_arr.each do |email|
    UserMailer.invite_email(user, email).deliver
    end
  end
end

