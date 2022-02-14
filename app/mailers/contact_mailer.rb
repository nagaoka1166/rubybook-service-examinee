class ContactMailer < ApplicationMailer
    default from: "送信元のメールアドレス"

    layout "mailer"

    def request_email(post, user)
      @user = user
      @post = post
      @researcher = @post.user
    mail(
      from: @user.email,
      to: @researcher.email,
      subject: 'Test')
    end

  def entries_email(post, user)
      @user = user
      @post = post
      @researcher = @post.user
      mail(
        from: @researcher.email,
        to: @user.email,
        subject: 'Test')
  end

  # private
  # def params
  #   params.require(:post).permit(:title, :description, :caution, :testing_field, :reward, :item, :created_at, :id, :is_active, :experment_period, :recruitment_period)
  # end
end
