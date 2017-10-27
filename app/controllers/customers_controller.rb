class CustomersController < ApplicationController
  before_action :set_customer, only: %i[done]

  def index
    @customers = Customer.all

    render json: @customers
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      params = {
        id: @customer.id,
        done: @customer.done,
        created_at: @customer.created_at,
        frankfurts: @customer.frankfurts
      }
      ActionCable.server.broadcast 'order_channel', customer: params
      render json: @customer, status: :created
    else
      render @customer.errors
    end
  end

  def done
    if @customer.done
      handle_400 error_details: ['すでに完了済みです']
    else
      @customer.done = true
      render json: @customer, status: :ok
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(frankfurts_attributes: [:ketchup, :mustard])
  end
end
