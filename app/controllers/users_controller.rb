class UsersController < ApplicationController

 def show
    @user = current_user
  end

  def new
    @user = User.new()
  end

  def new_teammate
    team_id = params.require(:id).permit(:id)
    @user = User.new(team_id: :team_id)
    render :new
  end


  def create
    new_user = params.require(:user).permit(:name, :email, :password, :password_confirmation)
    @user=User.new(new_user)

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


end
