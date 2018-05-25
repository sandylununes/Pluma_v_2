require 'test_helper'

class TransferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transference = transferences(:one)
  end

  test "should get index" do
    get transferences_url
    assert_response :success
  end

  test "should get new" do
    get new_transference_url
    assert_response :success
  end

  test "should create transference" do
    assert_difference('Transference.count') do
      post transferences_url, params: { transference: { branch_id: @transference.branch_id, collaborator: @transference.collaborator, company_id: @transference.company_id, cost_center_id: @transference.cost_center_id, new_branch: @transference.new_branch, new_city: @transference.new_city, new_company: @transference.new_company, new_cost_center: @transference.new_cost_center, old_branch: @transference.old_branch, old_city: @transference.old_city, old_company: @transference.old_company, old_cost_center: @transference.old_cost_center, status: @transference.status, tranference_date: @transference.tranference_date, user_id: @transference.user_id, who_ask: @transference.who_ask } }
    end

    assert_redirected_to transference_url(Transference.last)
  end

  test "should show transference" do
    get transference_url(@transference)
    assert_response :success
  end

  test "should get edit" do
    get edit_transference_url(@transference)
    assert_response :success
  end

  test "should update transference" do
    patch transference_url(@transference), params: { transference: { branch_id: @transference.branch_id, collaborator: @transference.collaborator, company_id: @transference.company_id, cost_center_id: @transference.cost_center_id, new_branch: @transference.new_branch, new_city: @transference.new_city, new_company: @transference.new_company, new_cost_center: @transference.new_cost_center, old_branch: @transference.old_branch, old_city: @transference.old_city, old_company: @transference.old_company, old_cost_center: @transference.old_cost_center, status: @transference.status, tranference_date: @transference.tranference_date, user_id: @transference.user_id, who_ask: @transference.who_ask } }
    assert_redirected_to transference_url(@transference)
  end

  test "should destroy transference" do
    assert_difference('Transference.count', -1) do
      delete transference_url(@transference)
    end

    assert_redirected_to transferences_url
  end
end
