# Preview all emails at http://localhost:3000/rails/mailers/send_reguler_mailer
class SendRegulerMailerPreview < ActionMailer::Preview
  def send_mail
    user= User.first
    posts = Post.all
    SendRegulerMailer.send_mail(user,posts)
  end
end
