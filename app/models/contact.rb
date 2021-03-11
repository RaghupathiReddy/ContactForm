class Contact < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email_address, :with => /\A^(.+)@(.+)$\Z/
  validates_presence_of :phone_number
  validates_presence_of :message
end
