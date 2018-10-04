class FirstappsController < ApplicationController
	before_action :set_find, only: [:edit, :update, :show, :destroy]
	def new
		@firstapp= Firstapp.new
	end

	def create
		@firstapp = Firstapp.new(firstapp_params)
		if @firstapp.save
			flash[:notice] = "Your Post is success"
			redirect_to firstapp_path(@firstapp)
		else
			render 'new'
		end
	end
	def show
		
	end

	def edit
		
	end

	def update
			if @firstapp.update(firstapp_params)
			flash[:notice] = "Your post is updated successfully"
			redirect_to firstapp_path(@firstapp)
		else
			render 'edit'
		end
	end
	def index
		@firstappsmany = Firstapp.all

	end

	def destroy
		@firstapp.destroy
		flash[:notice] = "Data was deleted successfully"
		redirect_to firstapps_path 
	end

	private
		def set_find
			@firstapp = Firstapp.find(params[:id])
		end
		def firstapp_params
			params.require(:firstapp).permit(:name, :department, :company)
		end
end