require "application_system_test_case"

class TransferencesTest < ApplicationSystemTestCase
  setup do
    @transference = transferences(:one)
  end

  test "visiting the index" do
    visit transferences_url
    assert_selector "h1", text: "Transferences"
  end

  test "creating a Transference" do
    visit transferences_url
    click_on "New Transference"

    fill_in "Branch", with: @transference.branch_id
    fill_in "Collaborator", with: @transference.collaborator
    fill_in "Company", with: @transference.company_id
    fill_in "Cost Center", with: @transference.cost_center_id
    fill_in "New Branch", with: @transference.new_branch
    fill_in "New City", with: @transference.new_city
    fill_in "New Company", with: @transference.new_company
    fill_in "New Cost Center", with: @transference.new_cost_center
    fill_in "Old Branch", with: @transference.old_branch
    fill_in "Old City", with: @transference.old_city
    fill_in "Old Company", with: @transference.old_company
    fill_in "Old Cost Center", with: @transference.old_cost_center
    fill_in "Status", with: @transference.status
    fill_in "Tranference Date", with: @transference.tranference_date
    fill_in "User", with: @transference.user_id
    fill_in "Who Ask", with: @transference.who_ask
    click_on "Create Transference"

    assert_text "Transference was successfully created"
    click_on "Back"
  end

  test "updating a Transference" do
    visit transferences_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @transference.branch_id
    fill_in "Collaborator", with: @transference.collaborator
    fill_in "Company", with: @transference.company_id
    fill_in "Cost Center", with: @transference.cost_center_id
    fill_in "New Branch", with: @transference.new_branch
    fill_in "New City", with: @transference.new_city
    fill_in "New Company", with: @transference.new_company
    fill_in "New Cost Center", with: @transference.new_cost_center
    fill_in "Old Branch", with: @transference.old_branch
    fill_in "Old City", with: @transference.old_city
    fill_in "Old Company", with: @transference.old_company
    fill_in "Old Cost Center", with: @transference.old_cost_center
    fill_in "Status", with: @transference.status
    fill_in "Tranference Date", with: @transference.tranference_date
    fill_in "User", with: @transference.user_id
    fill_in "Who Ask", with: @transference.who_ask
    click_on "Update Transference"

    assert_text "Transference was successfully updated"
    click_on "Back"
  end

  test "destroying a Transference" do
    visit transferences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transference was successfully destroyed"
  end
end
