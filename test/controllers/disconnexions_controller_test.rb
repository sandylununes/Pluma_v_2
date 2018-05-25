require 'test_helper'

class DisconnexionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disconnexion = disconnexions(:one)
  end

  test "should get index" do
    get disconnexions_url
    assert_response :success
  end

  test "should get new" do
    get new_disconnexion_url
    assert_response :success
  end

  test "should create disconnexion" do
    assert_difference('Disconnexion.count') do
      post disconnexions_url, params: { disconnexion: { agreed_disconexion: @disconnexion.agreed_disconexion, antecipation_contract: @disconnexion.antecipation_contract, charge: @disconnexion.charge, collaborator: @disconnexion.collaborator, company_initiative: @disconnexion.company_initiative, contract_term: @disconnexion.contract_term, cost_center_id: @disconnexion.cost_center_id, date_admission: @disconnexion.date_admission, date_notice: @disconnexion.date_notice, employee_initiative: @disconnexion.employee_initiative, observation: @disconnexion.observation, readmission: @disconnexion.readmission, reason_not_readmission: @disconnexion.reason_not_readmission, status: @disconnexion.status, user_id: @disconnexion.user_id } }
    end

    assert_redirected_to disconnexion_url(Disconnexion.last)
  end

  test "should show disconnexion" do
    get disconnexion_url(@disconnexion)
    assert_response :success
  end

  test "should get edit" do
    get edit_disconnexion_url(@disconnexion)
    assert_response :success
  end

  test "should update disconnexion" do
    patch disconnexion_url(@disconnexion), params: { disconnexion: { agreed_disconexion: @disconnexion.agreed_disconexion, antecipation_contract: @disconnexion.antecipation_contract, charge: @disconnexion.charge, collaborator: @disconnexion.collaborator, company_initiative: @disconnexion.company_initiative, contract_term: @disconnexion.contract_term, cost_center_id: @disconnexion.cost_center_id, date_admission: @disconnexion.date_admission, date_notice: @disconnexion.date_notice, employee_initiative: @disconnexion.employee_initiative, observation: @disconnexion.observation, readmission: @disconnexion.readmission, reason_not_readmission: @disconnexion.reason_not_readmission, status: @disconnexion.status, user_id: @disconnexion.user_id } }
    assert_redirected_to disconnexion_url(@disconnexion)
  end

  test "should destroy disconnexion" do
    assert_difference('Disconnexion.count', -1) do
      delete disconnexion_url(@disconnexion)
    end

    assert_redirected_to disconnexions_url
  end
end
