require 'test_helper'

class ProspectusRequestsControllerTest < ActionController::TestCase
  setup do
    @prospectus_request = prospectus_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prospectus_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prospectus_request" do
    assert_difference('ProspectusRequest.count') do
      post :create, :prospectus_request => @prospectus_request.attributes
    end

    assert_redirected_to prospectus_request_path(assigns(:prospectus_request))
  end

  test "should show prospectus_request" do
    get :show, :id => @prospectus_request.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prospectus_request.to_param
    assert_response :success
  end

  test "should update prospectus_request" do
    put :update, :id => @prospectus_request.to_param, :prospectus_request => @prospectus_request.attributes
    assert_redirected_to prospectus_request_path(assigns(:prospectus_request))
  end

  test "should destroy prospectus_request" do
    assert_difference('ProspectusRequest.count', -1) do
      delete :destroy, :id => @prospectus_request.to_param
    end

    assert_redirected_to prospectus_requests_path
  end
end
