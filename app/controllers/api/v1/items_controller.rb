class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items
    end

    def create 
        item = Item.new(item_params)
        if item.save 
            render json: item, status: :accepted  #sends status code to front end
        else
            render json: { errors: item.errors.full_messages }, status: :unprocessible_entity
        end
    end 

    private

    def item_params 
        params.require(:item).permit(:title, :description, :image_url, :url, :category_id)
    end 
end

#since strong params is nested, data sent through fetch also needs to be nested.