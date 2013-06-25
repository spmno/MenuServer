require 'test_helper'

class DishKindsControllerTest < ActionController::TestCase
  setup do
    @dish_kind = dish_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dish_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dish_kind" do
    assert_difference('DishKind.count') do
      post :create, dish_kind: @dish_kind.attributes
    end

    assert_redirected_to dish_kind_path(assigns(:dish_kind))
  end

  test "should show dish_kind" do
    get :show, id: @dish_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dish_kind
    assert_response :success
  end

  test "should update dish_kind" do
    put :update, id: @dish_kind, dish_kind: @dish_kind.attributes
    assert_redirected_to dish_kind_path(assigns(:dish_kind))
  end

  test "should destroy dish_kind" do
    assert_difference('DishKind.count', -1) do
      delete :destroy, id: @dish_kind
    end

    assert_redirected_to dish_kinds_path
  end
end
