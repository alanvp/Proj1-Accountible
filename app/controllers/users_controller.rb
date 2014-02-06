class UsersController < ApplicationController

 def show
    @user = current_user
  end

  def new
    team_id = params.require(:id).permit(:id) || nil
    binding.pry
    @user = User.new()
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
