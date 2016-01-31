class User < ActiveRecord::Base
  def initialize(p = {})
    puts p.inspect
  end

  def validate_email
    raise 'InvalidEmailAddress' if (email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i).nil?
    raise 'InvalidEmailAddress' if email.blank?
    raise 'EmailAddressExists'  unless User.where(email: email).blank?
    true
  end
end
