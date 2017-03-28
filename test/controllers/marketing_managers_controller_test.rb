require 'test_helper'

class MarketingManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketing_manager = marketing_managers(:one)
  end

  test "should get index" do
    get marketing_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_marketing_manager_url
    assert_response :success
  end

  test "should create marketing_manager" do
    assert_difference('MarketingManager.count') do
      post marketing_managers_url, params: { marketing_manager: { first_name: @marketing_manager.first_name, last_name: @marketing_manager.last_name, leads_per_hour: @marketing_manager.leads_per_hour, password_digest: @marketing_manager.password_digest, username: @marketing_manager.username } }
    end

    assert_redirected_to marketing_manager_url(MarketingManager.last)
  end

  test "should show marketing_manager" do
    get marketing_manager_url(@marketing_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketing_manager_url(@marketing_manager)
    assert_response :success
  end

  test "should update marketing_manager" do
    patch marketing_manager_url(@marketing_manager), params: { marketing_manager: { first_name: @marketing_manager.first_name, last_name: @marketing_manager.last_name, leads_per_hour: @marketing_manager.leads_per_hour, password_digest: @marketing_manager.password_digest, username: @marketing_manager.username } }
    assert_redirected_to marketing_manager_url(@marketing_manager)
  end

  test "should destroy marketing_manager" do
    assert_difference('MarketingManager.count', -1) do
      delete marketing_manager_url(@marketing_manager)
    end

    assert_redirected_to marketing_managers_url
  end
end
