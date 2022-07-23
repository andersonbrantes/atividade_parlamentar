require "application_system_test_case"

class ReportManager::ExternalFilesTest < ApplicationSystemTestCase
  setup do
    @report_manager_external_file = report_manager_external_files(:one)
  end

  test "visiting the index" do
    visit report_manager_external_files_url
    assert_selector "h1", text: "External files"
  end

  test "should create external file" do
    visit report_manager_external_files_url
    click_on "New external file"

    fill_in "Name", with: @report_manager_external_file.name
    click_on "Create External file"

    assert_text "External file was successfully created"
    click_on "Back"
  end

  test "should update External file" do
    visit report_manager_external_file_url(@report_manager_external_file)
    click_on "Edit this external file", match: :first

    fill_in "Name", with: @report_manager_external_file.name
    click_on "Update External file"

    assert_text "External file was successfully updated"
    click_on "Back"
  end

  test "should destroy External file" do
    visit report_manager_external_file_url(@report_manager_external_file)
    click_on "Destroy this external file", match: :first

    assert_text "External file was successfully destroyed"
  end
end
