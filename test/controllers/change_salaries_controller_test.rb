require 'test_helper'

class ChangeSalariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_salary = change_salaries(:one)
  end

  test "should get index" do
    get change_salaries_url
    assert_response :success
  end

  test "should get new" do
    get new_change_salary_url
    assert_response :success
  end

  test "should create change_salary" do
    assert_difference('ChangeSalary.count') do
      post change_salaries_url, params: { change_salary: { collaborator: @change_salary.collaborator, company_id: @change_salary.company_id, cost_center_id: @change_salary.cost_center_id, date_change: @change_salary.date_change, new_salary: @change_salary.new_salary, reason_change: @change_salary.reason_change, salary_current: @change_salary.salary_current, status: @change_salary.status, user_id: @change_salary.user_id } }
    end

    assert_redirected_to change_salary_url(ChangeSalary.last)
  end

  test "should show change_salary" do
    get change_salary_url(@change_salary)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_salary_url(@change_salary)
    assert_response :success
  end

  test "should update change_salary" do
    patch change_salary_url(@change_salary), params: { change_salary: { collaborator: @change_salary.collaborator, company_id: @change_salary.company_id, cost_center_id: @change_salary.cost_center_id, date_change: @change_salary.date_change, new_salary: @change_salary.new_salary, reason_change: @change_salary.reason_change, salary_current: @change_salary.salary_current, status: @change_salary.status, user_id: @change_salary.user_id } }
    assert_redirected_to change_salary_url(@change_salary)
  end

  test "should destroy change_salary" do
    assert_difference('ChangeSalary.count', -1) do
      delete change_salary_url(@change_salary)
    end

    assert_redirected_to change_salaries_url
  end
end
