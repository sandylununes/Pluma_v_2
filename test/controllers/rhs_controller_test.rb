require 'test_helper'

class RhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rh = rhs(:one)
  end

  test "should get index" do
    get rhs_url
    assert_response :success
  end

  test "should get new" do
    get new_rh_url
    assert_response :success
  end

  test "should create rh" do
    assert_difference('Rh.count') do
      post rhs_url, params: { rh: { email: @rh.email, name: @rh.name } }
    end

    assert_redirected_to rh_url(Rh.last)
  end

  test "should show rh" do
    get rh_url(@rh)
    assert_response :success
  end

  test "should get edit" do
    get edit_rh_url(@rh)
    assert_response :success
  end

  test "should update rh" do
    patch rh_url(@rh), params: { rh: { email: @rh.email, name: @rh.name } }
    assert_redirected_to rh_url(@rh)
  end

  test "should destroy rh" do
    assert_difference('Rh.count', -1) do
      delete rh_url(@rh)
    end

    assert_redirected_to rhs_url
  end
end
