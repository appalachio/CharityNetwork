class DonationMailer < ApplicationMailer
  def notify_charity
    @charity = params[:charity]
    @donation = params[:donation]

    mail(to: @charity.contact_email, subject: "A Donation Matching One of Your Needs Has Been Posted to Ottawa Helps")
  end
end
