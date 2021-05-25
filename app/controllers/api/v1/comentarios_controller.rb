module Api
module V1
  class ComentariosController < ApplicationController

skip_before_action :verify_authenticity_token

def show
      @comentario = Comentario.find_by(id: params[:id])
      if (@comentario!=nil)
        render json: @comentario, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

def index
        render json: Comentario.all, status: :ok
end

def update
 @comentario = Comentario.find_by(id: params[:id])

  if @comentario.update(comentario_params)
        render json: @comentario, status: :ok
      else
        render json: @comentario.errors, status: :unprocessable_entity
      end
end

def create
    @comentario = Comentario.new(comentario_params)

      if @comentario.save
        render json: @comentario, status: :created
      else
        render json: @comentario.errors, status: :unprocessable_entity
      end
end

def destroy
    @comentario = Comentario.find_by(id: params[:id])
    if @comentario.destroy
      render json: :nothing, status: :ok
    else
      render json: :nothing, status: :unprocessable_entity
    end
end
private
def comentario_params
      params.require(:comentario).permit(:cuerpo, :usuario_id, :coveet_id)
end
end
end
end


