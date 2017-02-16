require 'test_helper'

class SupaagentsControllerTest < ActionController::TestCase
  setup do
    @supaagent = supaagents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supaagents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supaagent" do
    assert_difference('Supaagent.count') do
      post :create, supaagent: { applicationid: @supaagent.applicationid, email: @supaagent.email, idimage: @supaagent.idimage, name: @supaagent.name, validation: @supaagent.validation }
    end

    assert_redirected_to supaagent_path(assigns(:supaagent))
  end

  test "should show supaagent" do
    get :show, id: @supaagent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supaagent
    assert_response :success
  end

  test "should update supaagent" do
    patch :update, id: @supaagent, supaagent: { applicationid: @supaagent.applicationid, email: @supaagent.email, idimage: @supaagent.idimage, name: @supaagent.name, validation: @supaagent.validation }
    assert_redirected_to supaagent_path(assigns(:supaagent))
  end

  test "should destroy supaagent" do
    assert_difference('Supaagent.count', -1) do
      delete :destroy, id: @supaagent
    end

    assert_redirected_to supaagents_path
  end
end
