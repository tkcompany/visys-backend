class CylinderTypesController < ApplicationController
  before_action :set_cylinder_type, only: [:show, :update, :destroy]

  # GET /cylinder_types
  def index
    @cylinder_types = CylinderType.all

    render json: @cylinder_types
  end

  # GET /cylinder_types/1
  def show
    render json: @cylinder_type
  end

  # POST /cylinder_types
  def create
    @cylinder_type = CylinderType.new(cylinder_type_params)

    if @cylinder_type.save
      render json: @cylinder_type, status: :created, location: @cylinder_type
    else
      render json: @cylinder_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cylinder_types/1
  def update
    if @cylinder_type.update(cylinder_type_params)
      render json: @cylinder_type
    else
      render json: @cylinder_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cylinder_types/1
  def destroy
    @cylinder_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cylinder_type
      @cylinder_type = CylinderType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cylinder_type_params
      params.require(:cylinder_type).permit(:name, :status)
    end
end
