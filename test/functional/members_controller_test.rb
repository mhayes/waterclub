require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:member1)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, :member => @member.attributes
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, :id => @member.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @member.to_param
    assert_response :success
  end

  test "should update member" do
    put :update, :id => @member.to_param, :member => @member.attributes
    assert_redirected_to member_path(assigns(:member))
  end

  test "should deactivate member" do
    assert_difference('Member.count', 0) do
      delete :destroy, :id => @member.to_param
    end

    assert_redirected_to members_path
  end
end
