class ItemsController < ApplicationController
	before_action :set_list

	def create
		@item = @list.items.create(item_params)
		redirect_to @list
	end


	private

	def set_list
		@list = List.find(params[:list_id])
	end

	def item_params
		params[:item].permit(:content)
	end
end
