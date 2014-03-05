class PagesController < ApplicationController
  def launch
    @amount_raised_btc = total_btc_raised
    @amount_raised_usd = (@amount_raised_btc * get_updated_rate).round
    render layout: 'launch'
  end

  def about  
  end

  def contact  
  end

  def amazon
  end

  include ChargesHelper
end
