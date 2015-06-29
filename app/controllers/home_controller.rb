require 'clover'

class HomeController < ApplicationController


  def index
    @clover = Clover.new("#{current_user.access_token}", "#{current_user.merchant_id}")
    @item_names = []
    @clover.items['elements'].each do |item|
      @item_names.push(item['name'])
    end
    # @response = HTTParty.get("https://api.clover.com/v3/merchants/#{current_user.merchant_id}/items?access_token=#{current_user.access_token}")
  end

  def orders
    @clover = Clover.new("#{current_user.access_token}", "#{current_user.merchant_id}")

    @order_title = params["order_title"]
    @new_orders = @clover.new_order(@order_title)
  end

  private
  # for before_action filter later
  def set_clover
    @clover = Clover.new("#{current_user.access_token}", "#{current_user.merchant_id}")
  end
end
