module ChargesHelper

  def find_user(email)
    User.find_by(email: email)
  end

  def create_bitcoin_payment(email, amount, date, campaign_id)
    user = User.find_by(email: email)

    payment = Payment.create(campaign_id: campaign_id,
                             user_id: user.id,
                             amount: amount,
                             date: date
                            )
  end

  def create_user_and_bitcoin_payment(email, amount, date, campaign_id)
    user = User.create(email: email, 
                        password: 'tempp@ssw0rd',
                        password_confirmation: 'tempp@ssw0rd'
                      )
    payment = Payment.create(campaign_id: campaign_id,
                             user_id: user.id,
                             amount: amount,
                             date: date
                            )
  end
end
