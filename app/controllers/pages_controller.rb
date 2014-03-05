class PagesController < ApplicationController
  def launch
    @amount_raised_usd = 3020
    @amount_raised_btc = 4.083
    render layout: 'launch'
  end

  def about
    
  end

  def contact
    
  end
  def amazon; end
end
