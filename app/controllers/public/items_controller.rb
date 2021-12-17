class Public::ItemsController < ApplicationController
  def index
    @items = Item.all.page(params[:page])
    @materials = Material.all
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def search
    @materials = Material.all
    @material = Material.find(params[:id])
    @items = Item.where(material_id: @material.id).page(params[:page])
  end
end
