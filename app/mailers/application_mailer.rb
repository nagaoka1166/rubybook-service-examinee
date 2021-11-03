class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

#   def accept_email(post)
#     @post = params[:post]
#     @user = current_user
#     mail (
#         subject: '応募メール'
#         to: 'user@example.com',
#         from: 'taskleaf@example.com'
#     )
# end
end
