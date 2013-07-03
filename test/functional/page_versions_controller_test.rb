require 'test_helper'

class PageVersionsControllerTest < ActionController::TestCase
  setup do
    @page_version = page_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_version" do
    assert_difference('PageVersion.count') do
      post :create, page_version: @page_version.attributes
    end

    assert_redirected_to page_version_path(assigns(:page_version))
  end

  test "should show page_version" do
    get :show, id: @page_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_version
    assert_response :success
  end

  test "should update page_version" do
    put :update, id: @page_version, page_version: @page_version.attributes
    assert_redirected_to page_version_path(assigns(:page_version))
  end

  test "should destroy page_version" do
    assert_difference('PageVersion.count', -1) do
      delete :destroy, id: @page_version
    end

    assert_redirected_to page_versions_path
  end
end
