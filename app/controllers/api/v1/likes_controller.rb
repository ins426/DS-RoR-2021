module Api
module V1
  class LikesController < ApplicationController

skip_before_action :verify_authenticity_token

def show
  #@like = Like.find_by(id: params[:id])
  @likes = Like.where("usuario_id = ? AND coveet_id = ?", params[:usuario_id], params[:coveet_id])
  if (@likes!=nil)
    render json: @likes, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

def index
        render json: Like.all, status: :ok
end

def update
 @like = Like.find_by(id: params[:id])

  if @like.update(like_params)
        render json: @like, status: :ok
      else
        render json: @like.errors, status: :unprocessable_entity
      end
end

def create
    @like = Like.new(like_params)

      if @like.save
        render json: @like, status: :created
      else
        render json: @like.errors, status: :unprocessable_entity
      end
end

def destroy
    @like = Like.find_by(id: params[:id])
    if @like.destroy
      render json: :nothing, status: :ok
    else
      render json: :nothing, status: :unprocessable_entity
    end
end
private
def like_params
      params.require(:like).permit(:usuario_id, :coveet_id)
end
end
end
end


