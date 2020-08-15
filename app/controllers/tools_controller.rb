class ToolsController < ApplicationController
	def new
		@tool = Tool.new
	end

	def create
		@tool = Tool.create(tool_params)
		redirect_to root_path
	end

	def edit
		@tool = Tool.find(params[:id])
	end

	def update
		@tool = Tool.find(params[:id])
		@tool.update_attributes(tool_params)
		redirect_to root_path
	end

	def destroy
		@tool = Tool.find(params[:id])
		@tool.destroy
		redirect_to root_path
	end

	private

	def tool_params
		params.require(:tool).permit(:message)
	end

end
