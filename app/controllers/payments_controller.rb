class PaymentsController < ApplicationController

  def new
    @campaign = Campaign.find_by(id: params[:campaign_id])
    @payment = Payment.new(campaign: @campaign)
  end

  def create
    payment = Payment.new(payment_params)
    campaign = Campaign.find_by(id: params[:campaign_id])
    charge_stripe(current_user, params[:stripeToken], campaign, params[:payment][:amount], payment)
  end

  def update

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
