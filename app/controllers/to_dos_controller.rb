class ToDosController < ApplicationController

  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  def index         # GET /todos
    @todos = ToDo.all
  end

  def show          # GET /todos/:id
  end

  def new           # GET /todos/new
    @todo = ToDo.new
  end

  def create        # POST /todos
    @todo = ToDo.new(todo_params)
    @todo.save
    redirect_to to_do_path(@todo)
  end

  def edit          # GET /todos/:id/edit
  end

  def update        # PATCH /todos/:id
    @todo.update(todo_params)
    redirect_to to_do_path(@todo)
  end

  def destroy       # DELETE /todos/:id
    @todo.destroy
    redirect_to to_dos_path
  end

  private

  def set_todo
    @todo = ToDo.find(params[:id])
  end

  def todo_params
    params.require(:to_do).permit(:task,:time)
  end

end
