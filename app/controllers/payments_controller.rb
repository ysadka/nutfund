class PaymentsController < ApplicationController

  def new
    @campaign = Campaign.find_by(id: params[:campaign_id])
    @payment = Payment.new(campaign: @campaign)
  end

  def create
    payment = Payment.new(payment_params)
    if payment.save
      redirect_to campaign_path(params[:campaign_id])
    else
      render :new
    end
  end

  def update

  end

  def destroy
    payment = Payment.find_by(id: params[:id])
    payment.destroy
    redirect_to campaigns_path
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
end
