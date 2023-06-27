class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found

    wrap_parameters format: []
    def index
      users = User.all
      render json: users, include: {items: {except: [:created_at, :updated_at]}}, except: [:updated_at, :created_at]
    end
  
    def show
      user = find_user
      render json: user, include: {items: {except: [:updated_at, :created_at]}}, except: [:updated_at, :created_at]
    end
  
    private
    def find_user
      User.find(params[:id])
    end
  
    def render_user_not_found
      render json: {error: "user not found"}, status: :not_found
    end

end
