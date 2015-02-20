require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get show_bills" do
    get :show_bills
    assert_response :success
    assert_select("p.bill_name", Bill.count)
  end

  test "should get render_bills" do
    get :render_bills
    assert_response :success
    assert_template "show_bills"
  end

  test "should get go_to_bills" do
    get :go_to_bills
    assert_redirected_to dashboard_show_bills_path
  end

end
