class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
    end

    def create 
        item = Item.new(item_params)
    end 

    private

    def item_params 
        params.require(:item).permit(:title, :description, :image_url, :url, :category_id)
    end 
end

