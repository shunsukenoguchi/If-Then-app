class ApplicationMailer < ActionMailer::Base
  default from: '[管理メール] if then planning'
  layout 'mailer'
end
