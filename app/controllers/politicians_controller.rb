class PoliticiansController < ApplicationController
  before_action :set_politician, only: [:show, :edit, :update]
  before_action :logged_in?, except: [:new, :create]


  def index
    @politicians = Politician.all
  end

  def show
    @politician = Politician.new
  end

  def edit
  end

  def new
    @politician = Politician.new
  end

  def create
    @politician = Politician.new(politician_params)
    if @politician.save
      redirect_to dashboard_log_in_path, notice: "Registered!"
    else
      redirect_to politicians_path, notice: "All fields are required."
    end
  end

  def update
    if @politician.update(politician_params)
      redirect_to @politician, notice: 'Politician was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_politician
    @politician = Politician.find(params[:id])
  end

  def politician_params
    params.require(:politician).permit(:email, :name, :password)
  end
end
