require "application_system_test_case"

class ChangeSalariesTest < ApplicationSystemTestCase
  setup do
    @change_salary = change_salaries(:one)
  end

  test "visiting the index" do
    visit change_salaries_url
    assert_selector "h1", text: "Change Salaries"
  end

  test "creating a Change salary" do
    visit change_salaries_url
    click_on "New Change Salary"

    fill_in "Collaborator", with: @change_salary.collaborator
    fill_in "Company", with: @change_salary.company_id
    fill_in "Cost Center", with: @change_salary.cost_center_id
    fill_in "Date Change", with: @change_salary.date_change
    fill_in "New Salary", with: @change_salary.new_salary
    fill_in "Reason Change", with: @change_salary.reason_change
    fill_in "Salary Current", with: @change_salary.salary_current
    fill_in "Status", with: @change_salary.status
    fill_in "User", with: @change_salary.user_id
    click_on "Create Change salary"

    assert_text "Change salary was successfully created"
    click_on "Back"
  end

  test "updating a Change salary" do
    visit change_salaries_url
    click_on "Edit", match: :first

    fill_in "Collaborator", with: @change_salary.collaborator
    fill_in "Company", with: @change_salary.company_id
    fill_in "Cost Center", with: @change_salary.cost_center_id
    fill_in "Date Change", with: @change_salary.date_change
    fill_in "New Salary", with: @change_salary.new_salary
    fill_in "Reason Change", with: @change_salary.reason_change
    fill_in "Salary Current", with: @change_salary.salary_current
    fill_in "Status", with: @change_salary.status
    fill_in "User", with: @change_salary.user_id
    click_on "Update Change salary"

    assert_text "Change salary was successfully updated"
    click_on "Back"
  end

  test "destroying a Change salary" do
    visit change_salaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change salary was successfully destroyed"
  end
end
