require 'test_helper'

class SaleMembershipsControllerTest < ActionController::TestCase
  setup do
    @sale_membership = sale_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_membership" do
    assert_difference('SaleMembership.count') do
      post :create, sale_membership: { client_id: @sale_membership.client_id, membership_id: @sale_membership.membership_id, precio: @sale_membership.precio, quantity: @sale_membership.quantity, sale_id: @sale_membership.sale_id, subtotal: @sale_membership.subtotal }
    end

    assert_redirected_to sale_membership_path(assigns(:sale_membership))
  end

  test "should show sale_membership" do
    get :show, id: @sale_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_membership
    assert_response :success
  end

  test "should update sale_membership" do
    patch :update, id: @sale_membership, sale_membership: { client_id: @sale_membership.client_id, membership_id: @sale_membership.membership_id, precio: @sale_membership.precio, quantity: @sale_membership.quantity, sale_id: @sale_membership.sale_id, subtotal: @sale_membership.subtotal }
    assert_redirected_to sale_membership_path(assigns(:sale_membership))
  end

  test "should destroy sale_membership" do
    assert_difference('SaleMembership.count', -1) do
      delete :destroy, id: @sale_membership
    end

    assert_redirected_to sale_memberships_path
  end
end
