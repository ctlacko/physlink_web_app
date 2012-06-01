require 'test_helper'

class CaseproceduresControllerTest < ActionController::TestCase
  setup do
    @caseprocedure = caseprocedures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caseprocedures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caseprocedure" do
    assert_difference('Caseprocedure.count') do
      post :create, :caseprocedure => { :laterality => @caseprocedure.laterality, :patient_case_id => @caseprocedure.patient_case_id, :procedure_id => @caseprocedure.procedure_id, :volume => @caseprocedure.volume }
    end

    assert_redirected_to caseprocedure_path(assigns(:caseprocedure))
  end

  test "should show caseprocedure" do
    get :show, :id => @caseprocedure
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @caseprocedure
    assert_response :success
  end

  test "should update caseprocedure" do
    put :update, :id => @caseprocedure, :caseprocedure => { :laterality => @caseprocedure.laterality, :patient_case_id => @caseprocedure.patient_case_id, :procedure_id => @caseprocedure.procedure_id, :volume => @caseprocedure.volume }
    assert_redirected_to caseprocedure_path(assigns(:caseprocedure))
  end

  test "should destroy caseprocedure" do
    assert_difference('Caseprocedure.count', -1) do
      delete :destroy, :id => @caseprocedure
    end

    assert_redirected_to caseprocedures_path
  end
end
