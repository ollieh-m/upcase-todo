class TodosController < ApplicationController
    
  before_filter :authenticate
  
  def index
    @todos = Todo.where(email: session[:current_email])
  end
  
  def new
    @todo = Todo.new
  end
  
  def create
    todo = Todo.new(todo_params)
    if todo.save
      redirect_to todos_path
    end
  end
  
  private
  
  def todo_params
    params.require(:todo).permit(:title).tap do |todo_params|
      todo_params[:email] = session[:current_email]
    end
  end
    
end