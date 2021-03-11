class ContactMailer < ApplicationMailer

  def contact_mail
    @contact = params[:contact]
    mail(to: @contact.email_address, subject: 'Welcome email')
  end

end