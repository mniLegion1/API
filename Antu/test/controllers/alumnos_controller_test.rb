require 'test_helper'

class AlumnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get alumnos_url, as: :json
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post alumnos_url, params: { alumno: { edad: @alumno.edad, nombre: @alumno.nombre, rut: @alumno.rut } }, as: :json
    end

    assert_response 201
  end

  test "should show alumno" do
    get alumno_url(@alumno), as: :json
    assert_response :success
  end

  test "should update alumno" do
    patch alumno_url(@alumno), params: { alumno: { edad: @alumno.edad, nombre: @alumno.nombre, rut: @alumno.rut } }, as: :json
    assert_response 200
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete alumno_url(@alumno), as: :json
    end

    assert_response 204
  end
end
