require 'test_helper'

class ChangeFunctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_function = change_functions(:one)
  end

  test "should get index" do
    get change_functions_url
    assert_response :success
  end

  test "should get new" do
    get new_change_function_url
    assert_response :success
  end

  test "should create change_function" do
    assert_difference('ChangeFunction.count') do
      post change_functions_url, params: { change_function: { branch_id: @change_function.branch_id, collaborator: @change_function.collaborator, cost_center_id: @change_function.cost_center_id, current_position: @change_function.current_position, date_change: @change_function.date_change, new_position: @change_function.new_position, status: @change_function.status, user_id: @change_function.user_id } }
    end

    assert_redirected_to change_function_url(ChangeFunction.last)
  end

  test "should show change_function" do
    get change_function_url(@change_function)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_function_url(@change_function)
    assert_response :success
  end

  test "should update change_function" do
    patch change_function_url(@change_function), params: { change_function: { branch_id: @change_function.branch_id, collaborator: @change_function.collaborator, cost_center_id: @change_function.cost_center_id, current_position: @change_function.current_position, date_change: @change_function.date_change, new_position: @change_function.new_position, status: @change_function.status, user_id: @change_function.user_id } }
    assert_redirected_to change_function_url(@change_function)
  end

  test "should destroy change_function" do
    assert_difference('ChangeFunction.count', -1) do
      delete change_function_url(@change_function)
    end

    assert_redirected_to change_functions_url
  end
end
