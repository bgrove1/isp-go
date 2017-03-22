require 'test_helper'

class IspShiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get isp_shifts_index_url
    assert_response :success
  end

  test "should get show" do
    get isp_shifts_show_url
    assert_response :success
  end

  test "should get new" do
    get isp_shifts_new_url
    assert_response :success
  end

  test "should get edit" do
    get isp_shifts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get isp_shifts_delete_url
    assert_response :success
  end

end
