require 'test_helper'

class ProfesoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesore = profesores(:one)
  end

  test "should get index" do
    get profesores_url, as: :json
    assert_response :success
  end

  test "should create profesore" do
    assert_difference('Profesore.count') do
      post profesores_url, params: { profesore: { descripcion: @profesore.descripcion, edad: @profesore.edad, nombre: @profesore.nombre, profesion: @profesore.profesion } }, as: :json
    end

    assert_response 201
  end

  test "should show profesore" do
    get profesore_url(@profesore), as: :json
    assert_response :success
  end

  test "should update profesore" do
    patch profesore_url(@profesore), params: { profesore: { descripcion: @profesore.descripcion, edad: @profesore.edad, nombre: @profesore.nombre, profesion: @profesore.profesion } }, as: :json
    assert_response 200
  end

  test "should destroy profesore" do
    assert_difference('Profesore.count', -1) do
      delete profesore_url(@profesore), as: :json
    end

    assert_response 204
  end
end
