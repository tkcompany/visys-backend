require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url, as: :json
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address: @customer.address, cin_code: @customer.cin_code, cin_type: @customer.cin_type, city: @customer.city, first_name: @customer.first_name, gender: @customer.gender, last_name: @customer.last_name, phone: @customer.phone, status: @customer.status } }, as: :json
    end

    assert_response 201
  end

  test "should show customer" do
    get customer_url(@customer), as: :json
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address: @customer.address, cin_code: @customer.cin_code, cin_type: @customer.cin_type, city: @customer.city, first_name: @customer.first_name, gender: @customer.gender, last_name: @customer.last_name, phone: @customer.phone, status: @customer.status } }, as: :json
    assert_response 200
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer), as: :json
    end

    assert_response 204
  end
end
