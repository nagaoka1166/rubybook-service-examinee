class ContactMailer < ApplicationMailer
    # default from: "送信元のメールアドレス"

  def entries_email(user, post)
      @user = user
      @post = params[:post_id]
      mail to: user.email,
      subject: '【サイト名】 お問い合わせありがとうございます'
  end

  private
  def params
    params.require(:post).permit(:post_id)
  end
end
