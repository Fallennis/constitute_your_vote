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

  def log_in
    if request.post?
      politician = Politician.find_by_email(params[:email])
      if politician && politician.authenticate(params[:password])
        session[:politician_id] = politician.id
        flash[:notice] = "Welcome!"
        redirect_to dashboard_show_bills_path
      else
        flash.now[:notice] = "Invalid e-mail or password."
      end
    end
  end

  def log_out
    session[:id] = nil
    redirect_to dashboard_log_in_path
  end

end
