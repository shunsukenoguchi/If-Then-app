class SendRegulerMailer < ApplicationMailer
  def send_mail(user,posts)
    @user = user
    @posts = posts
    mail to: @user.email, subject: 'If Then Planning'
  end
end
