require 'test_helper'

class PatientcasesControllerTest < ActionController::TestCase
  setup do
    @patientcase = patientcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patientcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patientcase" do
    assert_difference('Patientcase.count') do
      post :create, :patientcase => { :age => @patientcase.age, :dictation => @patientcase.dictation, :dob => @patientcase.dob, :facility_id => @patientcase.facility_id, :firstname => @patientcase.firstname, :followup => @patientcase.followup, :id => @patientcase.id, :lastname => @patientcase.lastname, :payment => @patientcase.payment, :physician_id => @patientcase.physician_id, :procedure_date => @patientcase.procedure_date, :procedure_id => @patientcase.procedure_id, :procedure_time => @patientcase.procedure_time }
    end

    assert_redirected_to patientcase_path(assigns(:patientcase))
  end

  test "should show patientcase" do
    get :show, :id => @patientcase
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @patientcase
    assert_response :success
  end

  test "should update patientcase" do
    put :update, :id => @patientcase, :patientcase => { :age => @patientcase.age, :dictation => @patientcase.dictation, :dob => @patientcase.dob, :facility_id => @patientcase.facility_id, :firstname => @patientcase.firstname, :followup => @patientcase.followup, :id => @patientcase.id, :lastname => @patientcase.lastname, :payment => @patientcase.payment, :physician_id => @patientcase.physician_id, :procedure_date => @patientcase.procedure_date, :procedure_id => @patientcase.procedure_id, :procedure_time => @patientcase.procedure_time }
    assert_redirected_to patientcase_path(assigns(:patientcase))
  end

  test "should destroy patientcase" do
    assert_difference('Patientcase.count', -1) do
      delete :destroy, :id => @patientcase
    end

    assert_redirected_to patientcases_path
  end
end
