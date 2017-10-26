class CustomersController < ApplicationController
  def show
    @customers = Customer.all
    ActionCable.server.broadcast 'order_channel', message: 'created'
  end
end
