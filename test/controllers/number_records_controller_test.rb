require 'test_helper'

class NumberRecordsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  
  setup do
    @number_record = number_records(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:number_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create number_record" do
    assert_difference('NumberRecord.count') do
      post :create, number_record: { value: @number_record.value }
    end

    assert_redirected_to number_records_path
  end

  test "should show number_record" do
    get :show, id: @number_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @number_record
    assert_response :success
  end

  test "should update number_record" do
    patch :update, id: @number_record, number_record: { value: @number_record.value }
    assert_redirected_to number_record_path(assigns(:number_record))
  end

  test "should destroy number_record" do
    assert_difference('NumberRecord.count', -1) do
      delete :destroy, id: @number_record
    end

    assert_redirected_to number_records_path
  end
end
