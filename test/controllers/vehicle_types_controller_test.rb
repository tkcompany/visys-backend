require 'test_helper'

class VehicleTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_type = vehicle_types(:one)
  end

  test "should get index" do
    get vehicle_types_url, as: :json
    assert_response :success
  end

  test "should create vehicle_type" do
    assert_difference('VehicleType.count') do
      post vehicle_types_url, params: { vehicle_type: { description: @vehicle_type.description, name: @vehicle_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show vehicle_type" do
    get vehicle_type_url(@vehicle_type), as: :json
    assert_response :success
  end

  test "should update vehicle_type" do
    patch vehicle_type_url(@vehicle_type), params: { vehicle_type: { description: @vehicle_type.description, name: @vehicle_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy vehicle_type" do
    assert_difference('VehicleType.count', -1) do
      delete vehicle_type_url(@vehicle_type), as: :json
    end

    assert_response 204
  end
end
