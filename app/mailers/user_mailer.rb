class UserMailer < ApplicationMailer
  default from: "katrin.bartels@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'katrin.bartels@gmail.com',
      :subject => "A new contact form message from #{name}")
  end
end

