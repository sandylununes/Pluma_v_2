require "application_system_test_case"

class DisconnexionsTest < ApplicationSystemTestCase
  setup do
    @disconnexion = disconnexions(:one)
  end

  test "visiting the index" do
    visit disconnexions_url
    assert_selector "h1", text: "Disconnexions"
  end

  test "creating a Disconnexion" do
    visit disconnexions_url
    click_on "New Disconnexion"

    fill_in "Agreed Disconexion", with: @disconnexion.agreed_disconexion
    fill_in "Antecipation Contract", with: @disconnexion.antecipation_contract
    fill_in "Charge", with: @disconnexion.charge
    fill_in "Collaborator", with: @disconnexion.collaborator
    fill_in "Company Initiative", with: @disconnexion.company_initiative
    fill_in "Contract Term", with: @disconnexion.contract_term
    fill_in "Cost Center", with: @disconnexion.cost_center_id
    fill_in "Date Admission", with: @disconnexion.date_admission
    fill_in "Date Notice", with: @disconnexion.date_notice
    fill_in "Employee Initiative", with: @disconnexion.employee_initiative
    fill_in "Observation", with: @disconnexion.observation
    fill_in "Readmission", with: @disconnexion.readmission
    fill_in "Reason Not Readmission", with: @disconnexion.reason_not_readmission
    fill_in "Status", with: @disconnexion.status
    fill_in "User", with: @disconnexion.user_id
    click_on "Create Disconnexion"

    assert_text "Disconnexion was successfully created"
    click_on "Back"
  end

  test "updating a Disconnexion" do
    visit disconnexions_url
    click_on "Edit", match: :first

    fill_in "Agreed Disconexion", with: @disconnexion.agreed_disconexion
    fill_in "Antecipation Contract", with: @disconnexion.antecipation_contract
    fill_in "Charge", with: @disconnexion.charge
    fill_in "Collaborator", with: @disconnexion.collaborator
    fill_in "Company Initiative", with: @disconnexion.company_initiative
    fill_in "Contract Term", with: @disconnexion.contract_term
    fill_in "Cost Center", with: @disconnexion.cost_center_id
    fill_in "Date Admission", with: @disconnexion.date_admission
    fill_in "Date Notice", with: @disconnexion.date_notice
    fill_in "Employee Initiative", with: @disconnexion.employee_initiative
    fill_in "Observation", with: @disconnexion.observation
    fill_in "Readmission", with: @disconnexion.readmission
    fill_in "Reason Not Readmission", with: @disconnexion.reason_not_readmission
    fill_in "Status", with: @disconnexion.status
    fill_in "User", with: @disconnexion.user_id
    click_on "Update Disconnexion"

    assert_text "Disconnexion was successfully updated"
    click_on "Back"
  end

  test "destroying a Disconnexion" do
    visit disconnexions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disconnexion was successfully destroyed"
  end
end
