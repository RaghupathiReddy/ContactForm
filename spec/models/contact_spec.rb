require 'rails_helper'

describe Contact, type: :model do
  context "Validations" do
    it "first name should be mandatory" do
      should validate_presence_of(:first_name)
    end
    it "last name should be mandatory" do
      should validate_presence_of(:last_name)
    end
    it "message should be mandatory" do
      should validate_presence_of(:message)
    end
    it "phone number should be mandatory" do
      should validate_presence_of(:phone_number)
    end
    it "should accept valid email address" do
      should allow_value("test@test.com").for(:email_address)
    end
    it "should not accept invalid email address" do
      should_not allow_value("test").for(:email_address)
    end
  end
end