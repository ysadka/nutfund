class PagesController < ApplicationController
  def launch
    coinbase = Coinbase::Client.new(ENV['COINBASE_API_KEY'], ENV['COINBASE_API_SECRET'])
    @amount_raised_btc = coinbase.balance.to_f.round(3)
    @amount_raised_usd = (@amount_raised_btc * get_updated_rate).round(2)
    render layout: 'launch'
  end

  def about  
  end

  def contact  
  end

  include ChargesHelper
end
