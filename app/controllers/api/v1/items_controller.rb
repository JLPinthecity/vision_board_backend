class Api::V1::ItemsController < ApplicationController

    def index
        items = Item.all
        render json: ItemSerializer.new(items)
    end

    def create 
        item = Item.new(item_params)
        if item.save 
            render json: ItemSerializer.new(item), status: :accepted  #sends status code to front end
        else
            render json: { errors: item.errors.full_messages }, status: :unprocessible_entity
        end
    end 

    def show
        item = Item.find(params[:id])
        render json: item.to_json
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {message: "successfully deleted #{item.name}"}
    end



    private

    def item_params 
        params.require(:item).permit(:title, :description, :image_url, :url, :category_id)
    end 
end


