class FirstappsController < ApplicationController

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
		@firstapp = Firstapp.find(params[:id])
	end

	def edit
		@firstapp = Firstapp.find(params[:id])
	end

	def update
		@firstapp = Firstapp.find(params[:id])
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
		@firstapp = Firstapp.find(params[:id])
		@firstapp.destroy
		flash[:notice] = "Data was deleted successfully"
		redirect_to firstapps_path
	end

	private
		def firstapp_params
			params.require(:firstapp).permit(:name, :department, :company)
		end
end