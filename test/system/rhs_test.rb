require "application_system_test_case"

class RhsTest < ApplicationSystemTestCase
  setup do
    @rh = rhs(:one)
  end

  test "visiting the index" do
    visit rhs_url
    assert_selector "h1", text: "Rhs"
  end

  test "creating a Rh" do
    visit rhs_url
    click_on "New Rh"

    fill_in "Email", with: @rh.email
    fill_in "Name", with: @rh.name
    click_on "Create Rh"

    assert_text "Rh was successfully created"
    click_on "Back"
  end

  test "updating a Rh" do
    visit rhs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @rh.email
    fill_in "Name", with: @rh.name
    click_on "Update Rh"

    assert_text "Rh was successfully updated"
    click_on "Back"
  end

  test "destroying a Rh" do
    visit rhs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rh was successfully destroyed"
  end
end
