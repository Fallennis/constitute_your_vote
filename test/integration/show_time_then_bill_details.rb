require 'test_helper'

class ShowTimeThenBillDetailsTest < ActionDispatch::IntegrationTest
  test "see time then bills" do
    get root_path
    assert_response :success
    assert_template "dashboard/show_bills"
    assert_select 'a#go-to-politician'
    get new_politician_path
    assert_response :success
    assert_template "politicians/new"
    assert_select 'tr', Politician.count + 1
  end
end
