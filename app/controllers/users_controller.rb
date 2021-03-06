class UsersController < ApplicationController
  layout 'main'

 def show
    @user = current_user
  end

  def new
    @user = User.new()
  end

  def new_teammate
    token = params[:token]
    inviter = User.find_by_remember_token token
    @user = User.new
    @user.team_id = inviter.team_id
  
  end


  def create
    new_user = params.require(:user).permit(:name, :email, :password, :password_confirmation)
    team_id = params[:team_id]
    @user=User.new(new_user)
    if team_id != nil
      team = Team.find(team_id)
      team.users << @user
    end
    if @user.save
      flash[:success] = "Welcome to the Accountibility app!"
      sign_in @user
      redirect_to @user
    else
      render'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
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
