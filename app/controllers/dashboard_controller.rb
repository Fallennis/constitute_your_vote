class DashboardController < ApplicationController
  def show_bills
    @bills = Bill.all
  end

  def render_bills
    @bills = Bill.all
    render "show_bills"
  end

  def go_to_bills
    redirect_to dashboard_show_bills_path
  end
end
