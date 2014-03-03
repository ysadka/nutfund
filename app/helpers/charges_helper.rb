module ChargesHelper

  def charge_stripe(user, token, campaign, amount, payment)
    customer = Stripe::Customer.create(
      email: user.email,
      card:  token
      )

    charge = Stripe::Charge.create(
      customer:    customer.id,
      amount:      amount,
      description: 'Supporting' + campaign.name,
      currency:    'usd'
      )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    if payment.save
      redirect_to campaign_path(campaign.id)
    else
      render :new
    end
  end
end
