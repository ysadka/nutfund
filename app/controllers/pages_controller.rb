class PagesController < ApplicationController
  def launch
    @amount_raised_btc = 4.6894
    @amount_raised_usd = (@amount_raised_btc * 644.6).round
    render layout: 'launch'
  end

  def about
    
  end

  def contact
    
  end
  def amazon; end
end
