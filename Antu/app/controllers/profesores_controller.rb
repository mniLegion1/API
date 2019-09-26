class ProfesoresController < ApplicationController
  before_action :set_profesore, only: [:show, :update, :destroy]

  # GET /profesores
  def index
    @profesores = Profesore.all

    render json: @profesores
  end

  # GET /profesores/1
  def show
    render json: @profesore
  end

  # POST /profesores
  def create
    @profesore = Profesore.new(profesore_params)

    if @profesore.save
      render json: @profesore, status: :created, location: @profesore
    else
      render json: @profesore.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profesores/1
  def update
    if @profesore.update(profesore_params)
      render json: @profesore
    else
      render json: @profesore.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profesores/1
  def destroy
    @profesore.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesore
      @profesore = Profesore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profesore_params
      params.require(:profesore).permit(:nombre, :edad, :profesion, :descripcion)
    end
end
