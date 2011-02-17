require 'test_helper'

class SubjectAreasControllerTest < ActionController::TestCase
  setup do
    @subject_area = subject_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_area" do
    assert_difference('SubjectArea.count') do
      post :create, :subject_area => @subject_area.attributes
    end

    assert_redirected_to subject_area_path(assigns(:subject_area))
  end

  test "should show subject_area" do
    get :show, :id => @subject_area.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @subject_area.to_param
    assert_response :success
  end

  test "should update subject_area" do
    put :update, :id => @subject_area.to_param, :subject_area => @subject_area.attributes
    assert_redirected_to subject_area_path(assigns(:subject_area))
  end

  test "should destroy subject_area" do
    assert_difference('SubjectArea.count', -1) do
      delete :destroy, :id => @subject_area.to_param
    end

    assert_redirected_to subject_areas_path
  end
end
