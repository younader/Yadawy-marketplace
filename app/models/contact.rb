class Contact < ActiveRecord::Base
validates :first_name,:last_name,:email,:phone_number,:context , presence: true
validates :email, format: { with: Devise.email_regexp, message: "invalid email" }
end
