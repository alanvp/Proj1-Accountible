class OkrsController < ApplicationController
  def new
  end

  def create
  end

  def show
  	id = params[:format]
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

