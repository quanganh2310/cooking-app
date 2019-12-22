class UserMailer < ApplicationMailer
  default from: "cooking-app.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm_user_mail.subject
  #
  def confirm_user_mail(user)
    @user = user

    mail to: @user.email, subject: "Registration Confirmation"
  end
end
