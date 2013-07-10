require 'test_helper'

class OrcidsControllerTest < ActionController::TestCase
  setup do
    @orcid = orcids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orcids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orcid" do
    assert_difference('Orcid.count') do
      post :create, orcid: {  }
    end

    assert_redirected_to orcid_path(assigns(:orcid))
  end

  test "should show orcid" do
    get :show, id: @orcid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orcid
    assert_response :success
  end

  test "should update orcid" do
    put :update, id: @orcid, orcid: {  }
    assert_redirected_to orcid_path(assigns(:orcid))
  end

  test "should destroy orcid" do
    assert_difference('Orcid.count', -1) do
      delete :destroy, id: @orcid
    end

    assert_redirected_to orcids_path
  end
end
