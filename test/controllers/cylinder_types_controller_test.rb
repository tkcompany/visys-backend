require 'test_helper'

class CylinderTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cylinder_type = cylinder_types(:one)
  end

  test "should get index" do
    get cylinder_types_url, as: :json
    assert_response :success
  end

  test "should create cylinder_type" do
    assert_difference('CylinderType.count') do
      post cylinder_types_url, params: { cylinder_type: { name: @cylinder_type.name, status: @cylinder_type.status } }, as: :json
    end

    assert_response 201
  end

  test "should show cylinder_type" do
    get cylinder_type_url(@cylinder_type), as: :json
    assert_response :success
  end

  test "should update cylinder_type" do
    patch cylinder_type_url(@cylinder_type), params: { cylinder_type: { name: @cylinder_type.name, status: @cylinder_type.status } }, as: :json
    assert_response 200
  end

  test "should destroy cylinder_type" do
    assert_difference('CylinderType.count', -1) do
      delete cylinder_type_url(@cylinder_type), as: :json
    end

    assert_response 204
  end
end
