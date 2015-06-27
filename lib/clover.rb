class Clover
  include HTTParty
  base_uri 'api.clover.com:443'

  def initialize(access_token, merchant_id)
    @options = { query: {access_token: access_token}}
    @merchant_id = merchant_id
  end

  def items
    self.class.get("/v3/merchants/#{@merchant_id}/items", @options)
  end
end
