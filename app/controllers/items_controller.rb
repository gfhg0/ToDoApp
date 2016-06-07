class ItemsController < ApplicationController
	before_action :set_list
	before_action :set_item, except: [:create]

	def create
		@item = @list.items.create(item_params)
		redirect_to @list
	end


	def destroy
    	@item.destroy
    	redirect_to @list
  	end

	private

	def set_list
		@list = List.find(params[:list_id])
	end

	def set_item
		@item = @list.items.find(params[:id])
	end

	def item_params
		params[:item].permit(:content)
	end
end
