class OkrsController < ApplicationController
  layout 'main'
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
    calc_pie_chart_stats(@teammate)
  end

  def calc_pie_chart_stats(teammate)
    @n = 0
    @finished = 0
    teammate.todos.each do |todo|
      if todo["pct_complete"].to_i >= 75
        @finished += 1
      end
      @n += 1
    end
    gon.finished = @finished
    gon.unfinished = @n - @finished
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

