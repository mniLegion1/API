class AlumnosController < ApplicationController
  before_action :set_alumno, only: [:show, :update, :destroy]

  # GET /alumnos
  def index
    @alumnos = Alumno.all

    render json: @alumnos
  end

  # GET /alumnos/1
  def show
    render json: @alumno
  end

  # POST /alumnos
  def create
    @alumno = Alumno.new(alumno_params)

    if @alumno.save
      render json: @alumno, status: :created, location: @alumno
    else
      render json: @alumno.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alumnos/1
  def update
    if @alumno.update(alumno_params)
      render json: @alumno
    else
      render json: @alumno.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alumnos/1
  def destroy
    @alumno.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumno
      @alumno = Alumno.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def alumno_params
      params.require(:alumno).permit(:nombre, :edad, :rut)
    end
end
