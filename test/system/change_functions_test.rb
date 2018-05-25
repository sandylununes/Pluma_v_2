require "application_system_test_case"

class ChangeFunctionsTest < ApplicationSystemTestCase
  setup do
    @change_function = change_functions(:one)
  end

  test "visiting the index" do
    visit change_functions_url
    assert_selector "h1", text: "Change Functions"
  end

  test "creating a Change function" do
    visit change_functions_url
    click_on "New Change Function"

    fill_in "Branch", with: @change_function.branch_id
    fill_in "Collaborator", with: @change_function.collaborator
    fill_in "Cost Center", with: @change_function.cost_center_id
    fill_in "Current Position", with: @change_function.current_position
    fill_in "Date Change", with: @change_function.date_change
    fill_in "New Position", with: @change_function.new_position
    fill_in "Status", with: @change_function.status
    fill_in "User", with: @change_function.user_id
    click_on "Create Change function"

    assert_text "Change function was successfully created"
    click_on "Back"
  end

  test "updating a Change function" do
    visit change_functions_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @change_function.branch_id
    fill_in "Collaborator", with: @change_function.collaborator
    fill_in "Cost Center", with: @change_function.cost_center_id
    fill_in "Current Position", with: @change_function.current_position
    fill_in "Date Change", with: @change_function.date_change
    fill_in "New Position", with: @change_function.new_position
    fill_in "Status", with: @change_function.status
    fill_in "User", with: @change_function.user_id
    click_on "Update Change function"

    assert_text "Change function was successfully updated"
    click_on "Back"
  end

  test "destroying a Change function" do
    visit change_functions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change function was successfully destroyed"
  end
end
