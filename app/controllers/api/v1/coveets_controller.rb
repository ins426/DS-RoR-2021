module Api
module V1
  class CoveetsController < ApplicationController

skip_before_action :verify_authenticity_token

def show
      @coveet = Coveet.find_by(id: params[:id])
      if (@coveet!=nil)
        render json: @coveet, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

def index
        render json: Coveet.all, status: :ok
end

def update
 @coveet = Coveet.find_by(id: params[:id])

  if @coveet.update(coveet_params)
        render json: @coveet, status: :ok
      else
        render json: @coveet.errors, status: :unprocessable_entity
      end
end

def create
    @coveet = Coveet.new(coveet_params)

      if @coveet.save
        render json: @coveet, status: :created
      else
        render json: @coveet.errors, status: :unprocessable_entity
      end
end

private
def coveet_params
      params.require(:coveet).permit(:cuerpo, :usuario_id, :likes)
end
end
end
end


