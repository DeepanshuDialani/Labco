class LabsController < ApplicationController

	def index
		@labs = Lab.all
	end

	def show
    	@lab = Lab.find(params[:id])
  	end

	def create
		@lab = Lab.new(lab_params)
		if @lab.save 
			redirect_to @lab
		else 
			render 'new'
		end
	end

	private
	
	def lab_params
		params.require(:lab).permit(:name, :address, :logo)
	end

end
