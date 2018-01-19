require 'test_helper'

class ClassRegistrationsControllerTest < ActionController::TestCase
  setup do
    @class_registration = class_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_registration" do
    assert_difference('ClassRegistration.count') do
      post :create, class_registration: { client_id: @class_registration.client_id, email: @class_registration.email, expiration_date: @class_registration.expiration_date, id: @class_registration.id, phone: @class_registration.phone, present: @class_registration.present, subscription_id: @class_registration.subscription_id }
    end

    assert_redirected_to class_registration_path(assigns(:class_registration))
  end

  test "should show class_registration" do
    get :show, id: @class_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_registration
    assert_response :success
  end

  test "should update class_registration" do
    patch :update, id: @class_registration, class_registration: { client_id: @class_registration.client_id, email: @class_registration.email, expiration_date: @class_registration.expiration_date, id: @class_registration.id, phone: @class_registration.phone, present: @class_registration.present, subscription_id: @class_registration.subscription_id }
    assert_redirected_to class_registration_path(assigns(:class_registration))
  end

  test "should destroy class_registration" do
    assert_difference('ClassRegistration.count', -1) do
      delete :destroy, id: @class_registration
    end

    assert_redirected_to class_registrations_path
  end
end
