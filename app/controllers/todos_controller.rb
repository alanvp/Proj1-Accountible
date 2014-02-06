class TodosController < ApplicationController
  def new
  end

  def create
    todo = params.require(:todo).permit(:todo)
    my_todo = Todo.create(todo)
    my_todo.pct_complete = 0
    my_todo.week_created = Time.now.strftime("%GW%V")
    current_user.todos << my_todo
    render :my_todos
  end

  def my_todos
  end

  def edit
    @todo = Todo.find(params[:id].to_i)
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(params.require(:todo).permit(:todo, :pct_complete))
    render :my_todos
  end


end
