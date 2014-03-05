class PaymentsController < ApplicationController

  skip_before_filter  :verify_authenticity_token

  def new
    @campaign = Campaign.find_by(id: params[:campaign_id])
    @payment = Payment.new(campaign: @campaign)
  end

  def create
    # payment = Payment.new(payment_params)
    # campaign = Campaign.find_by(id: params[:campaign_id])
    # charge_stripe(current_user, params[:stripeToken], campaign, params[:payment][:amount], payment)
  end

  def coinbase_callback
    render nothing: true

    amount = params["order"]["total_native"]["cents"]
    btc_amount = params["order"]["total_btc"]["cents"]
    email = params["customer"]["email"]
    date = params["order"]["created_at"].to_date

    if find_user(email)
      create_bitcoin_payment(email, amount, btc_amount, date, 1)
    else
      create_user_and_bitcoin_payment(email, amount, btc_amount, date, 1)
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:campaign_id,
                                    :user_id,
                                    :date, 
                                    :amount, 
                                    :comment
                                   )
  end

  include ChargesHelper
end
