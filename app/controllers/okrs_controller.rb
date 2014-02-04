class OkrsController < ApplicationController
  def new
  end

  def create
  end

  def show
   
  	id = params[:format]

  	@teammate = User.find(id)

  end

  def delete
  end
end
