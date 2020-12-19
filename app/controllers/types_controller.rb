class TypesController < ApplicationController
    def index
        types = Type.all
        render json: types
    end

    def create 
        type = Type.create(type_params)
        render json: type
    end

    private
    def type_params
        params.permit(:name)
    end

end
