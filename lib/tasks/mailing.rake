namespace :mailing do
  desc 'メールを発行する。'
  task :send_mail => :environment do
    users = User.all
    posts = Post.all
    users.each do |user|
      SendRegulerMailer.send_mail(user,posts).deliver
    end
  end
end
