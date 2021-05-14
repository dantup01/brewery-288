class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit]

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def show; end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :address, :city, :county, :post_code)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
