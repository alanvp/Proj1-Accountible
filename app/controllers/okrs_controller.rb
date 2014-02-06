class OkrsController < ApplicationController
  def new
  end

  def create
    okr = params.require(:okr).permit(:objective, :kr1, :kr2, :kr3, :kr4, :kr5)
    current_user.okrs << Okr.create(okr)
    render :my_okrs
  end

  def show
  	id = params[:id]
  	@teammate = User.find(id)
  end

  def my_okrs
  end

  def edit
    @okr = Okr.find(params[:id].to_i)
  end

  def update
    @okr = Okr.find(params[:id])
    @okr.update_attributes(params.require(:okr).permit(:id, :objective, :kr1, :kr2, :kr3, :kr4, :kr5))
    render :my_okrs
  end

  def destroy
    @okr = Okr.find(params[:id])
    @okr.delete
    render :my_okrs
  end
end

