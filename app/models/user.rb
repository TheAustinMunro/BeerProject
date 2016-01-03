class User < ActiveRecord::Base
  def validate_email
    raise 'InvalidEmailAddress' if (email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i).nil?
    raise 'EmailAddressExists'  unless User.where(email: email).blank?
    true
  end
end
