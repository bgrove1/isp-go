require 'test_helper'

class InStorePromotersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get in_store_promoters_index_url
    assert_response :success
  end

  test "should get show" do
    get in_store_promoters_show_url
    assert_response :success
  end

  test "should get new" do
    get in_store_promoters_new_url
    assert_response :success
  end

  test "should get edit" do
    get in_store_promoters_edit_url
    assert_response :success
  end

  test "should get delete" do
    get in_store_promoters_delete_url
    assert_response :success
  end

end
