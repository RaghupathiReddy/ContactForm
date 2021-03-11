class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create_contact
    @contact = Contact.new
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email_address = params[:email]
    @contact.phone_number = params[:phone]
    @contact.message = params[:message]
    if @contact.save
      ContactMailer.with(contact: @contact).contact_mail.deliver_now
      redirect_to '/'
    else
    end
  end

  def index
  end

end