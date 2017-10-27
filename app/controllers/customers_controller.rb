class CustomersController < ApplicationController
  def show
    @customers = Customer.all
    ActionCable.server.broadcast 'order_channel', message: 'created'
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created
    else
      render @customer.errors
    end
  end

  private

  def customer_params
    params.require(:customer).permit(frankfurts_attributes: [:ketchup, :mustard])
  end
end
