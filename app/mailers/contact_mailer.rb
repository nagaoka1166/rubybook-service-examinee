class ContactMailer < ApplicationMailer
    default from: "送信元のメールアドレス"

    def entry_email(post)
        @post = params[:post]
        @user = current_user
        mail (
            subject: '応募メール'
            to: 'user@example.com',
            from: 'taskleaf@example.com'
        )
    end


end
