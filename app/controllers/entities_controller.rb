# app/controllers/entities_controller.rb
class EntitiesController < ApplicationController
    def new
      @entity = Entity.new
    end
  
    def create
      @entity = Entity.new(entity_params)
      if @entity.save
        redirect_to @entity, notice: 'Entity was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def entity_params
      params.require(:entity).permit(:name, :entity_type, :description, :cover_image)
    end
end

def index
  @entities = Entity.where("name LIKE ?", "%#{params[:search]}%")
                    .order(created_at: :desc)
                    .page(params[:page])
end
  