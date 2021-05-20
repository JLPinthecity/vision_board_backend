class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :image_url, :url, :category_id, :category
end
