class TodosController < ApplicationController
	  before_action :authenticate_user!

	def index
		@todos = Todo.where(user_id: current_user.id)
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		@todo.user = current_user
		@todo.save
		redirect_to todos_path
	end

	def show
		@todo = Todo.find(params[:id])
	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])
		@todo.update(todo_params)
		redirect_to todos_path
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		redirect_to todos_path
	end


	private

	def todo_params
		params.require(:todo).permit(:title, :content)
	end

end
