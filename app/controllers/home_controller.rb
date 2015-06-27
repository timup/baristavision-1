require 'clover'

class HomeController < ApplicationController
  def index
    @clover = Clover.new("#{current_user.access_token}", "#{current_user.merchant_id}")

    # @response = HTTParty.get("https://api.clover.com/v3/merchants/#{current_user.merchant_id}/items?access_token=#{current_user.access_token}")
  end
end
