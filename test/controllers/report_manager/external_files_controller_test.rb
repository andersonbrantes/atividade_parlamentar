require "test_helper"

class ReportManager::ExternalFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_manager_external_file = report_manager_external_files(:one)
  end

  test "should get index" do
    get report_manager_external_files_url
    assert_response :success
  end

  test "should get new" do
    get new_report_manager_external_file_url
    assert_response :success
  end

  test "should create report_manager_external_file" do
    assert_difference("ReportManager::ExternalFile.count") do
      post report_manager_external_files_url, params: { report_manager_external_file: { name: @report_manager_external_file.name } }
    end

    assert_redirected_to report_manager_external_file_url(ReportManager::ExternalFile.last)
  end

  test "should show report_manager_external_file" do
    get report_manager_external_file_url(@report_manager_external_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_manager_external_file_url(@report_manager_external_file)
    assert_response :success
  end

  test "should update report_manager_external_file" do
    patch report_manager_external_file_url(@report_manager_external_file), params: { report_manager_external_file: { name: @report_manager_external_file.name } }
    assert_redirected_to report_manager_external_file_url(@report_manager_external_file)
  end

  test "should destroy report_manager_external_file" do
    assert_difference("ReportManager::ExternalFile.count", -1) do
      delete report_manager_external_file_url(@report_manager_external_file)
    end

    assert_redirected_to report_manager_external_files_url
  end
end
