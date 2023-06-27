class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items, include: {user: {except: [:updated_at, :created_at]}}, except: [:updated_at, :created_at]
  end
end