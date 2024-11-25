class DonationsController < ApplicationController
  
  def create
    Stripe::PaymentIntent.create({
      amount: (params[:amount].to_i * 100), # Amount in cents
      currency: 'usd',
      payment_method: params[:payment_method_id],
      confirm: true,
      automatic_payment_methods: { enabled: true, allow_redirects: 'never' }
    })

    redirect_to root_path, notice: "Thank you for your donation!"
    rescue Stripe::CardError => e
    redirect_to new_donation_path, alert: e.message

    Stripe::Subscription.create({
      customer: users.id ,
      items: [{ price: ENV['STRIPE_PRICE_ID'] }],
    })
    @donation.stripe_subscription_id = subscription.id
    @donation.save!
  end


end
