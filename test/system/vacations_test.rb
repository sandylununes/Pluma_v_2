require "application_system_test_case"

class VacationsTest < ApplicationSystemTestCase
  setup do
    @vacation = vacations(:one)
  end

  test "visiting the index" do
    visit vacations_url
    assert_selector "h1", text: "Vacations"
  end

  test "creating a Vacation" do
    visit vacations_url
    click_on "New Vacation"

    fill_in "Allowance", with: @vacation.allowance
    fill_in "Branch", with: @vacation.branch_id
    fill_in "Collaborator", with: @vacation.collaborator
    fill_in "Company", with: @vacation.company_id
    fill_in "Cost Center", with: @vacation.cost_center_id
    fill_in "First Date", with: @vacation.first_date
    fill_in "First Quantity", with: @vacation.first_quantity
    fill_in "Note", with: @vacation.note
    fill_in "Second Date", with: @vacation.second_date
    fill_in "Second Quantity", with: @vacation.second_quantity
    fill_in "Status", with: @vacation.status
    fill_in "Third Date", with: @vacation.third_date
    fill_in "Third Quantity", with: @vacation.third_quantity
    click_on "Create Vacation"

    assert_text "Vacation was successfully created"
    click_on "Back"
  end

  test "updating a Vacation" do
    visit vacations_url
    click_on "Edit", match: :first

    fill_in "Allowance", with: @vacation.allowance
    fill_in "Branch", with: @vacation.branch_id
    fill_in "Collaborator", with: @vacation.collaborator
    fill_in "Company", with: @vacation.company_id
    fill_in "Cost Center", with: @vacation.cost_center_id
    fill_in "First Date", with: @vacation.first_date
    fill_in "First Quantity", with: @vacation.first_quantity
    fill_in "Note", with: @vacation.note
    fill_in "Second Date", with: @vacation.second_date
    fill_in "Second Quantity", with: @vacation.second_quantity
    fill_in "Status", with: @vacation.status
    fill_in "Third Date", with: @vacation.third_date
    fill_in "Third Quantity", with: @vacation.third_quantity
    click_on "Update Vacation"

    assert_text "Vacation was successfully updated"
    click_on "Back"
  end

  test "destroying a Vacation" do
    visit vacations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vacation was successfully destroyed"
  end
end
